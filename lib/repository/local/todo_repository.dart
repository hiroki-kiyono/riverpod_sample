import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

final todoRepository = Provider.autoDispose<TodoRepository>((ref) => TodoRepositoryImpl(ref.read));

abstract class TodoRepository {
  Future<List<Todo>> getTodoList();
  Future<void> saveTodoList(List<Todo> todoList);
}

/// todoリストの保存key値.
const _todoListKey = 'todoListKey';

class TodoRepositoryImpl implements TodoRepository {
  final Reader _read;
  TodoRepositoryImpl(this._read);

  /// todoリスト取得処理.
  @override
  Future<List<Todo>> getTodoList() async {
    final SharedPreferences preference = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> todoListJsonList =
        List<Map<String, dynamic>>.from(jsonDecode(preference.getString(_todoListKey) ?? '[]'));
    return todoListJsonList.map((json) => Todo.fromJson(json)).toList();
  }

  /// todoリスト保存処理.
  @override
  Future<void> saveTodoList(List<Todo> todoList) async {
    final SharedPreferences preference = await SharedPreferences.getInstance();
    await preference.setString(_todoListKey, jsonEncode(todoList.map((todo) => todo.toJson()).toList()));
  }
}
