import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:riverpod_sample/models/todo/todo_state.dart';
import 'package:riverpod_sample/repository/local/todo_repository.dart';

enum SortOrder {
  asc,
  desc,
}

/// ソート順状態(非公開)
final _sortOrderState = StateProvider<SortOrder>((ref) => SortOrder.asc);

/// todoリスト(非公開)
final _todoListState = StateProvider<List<Todo>?>((ref) => null);

/// ソート済みtodoリスト
final sortedTodoListState = StateProvider<List<Todo>?>((ref) {
  final List<Todo>? todoList = ref.watch(_todoListState);

  if (ref.watch(_sortOrderState) == SortOrder.asc) {
    todoList?.sort((a, b) => a.timestamp.compareTo(b.timestamp));
  } else {
    todoList?.sort((a, b) => b.timestamp.compareTo(a.timestamp));
  }
  return todoList;
});

final todoNotifier = StateNotifierProvider<TodoNotifier, TodoListState>((ref) => TodoNotifier(ref.read));
/// disposeさせたい場合とで使い分ける
final todoAutoDisposeNotifier = StateNotifierProvider.autoDispose<TodoNotifier, TodoListState>((ref) => TodoNotifier(ref.read));

class TodoNotifier extends StateNotifier<TodoListState> {
  final Reader _read;
  TodoNotifier(this._read) : super(const TodoListState.loading()) {
    initState();
  }

  /// 初期処理
  Future<void> initState() async {
    final list = await _read(todoRepository).getTodoList();
    _read(_todoListState.notifier).state = list;
    state = TodoListState(todoList: list);
  }

  /// 終了処理
  @override
  void dispose() {
    super.dispose();
    _read(_todoListState)?.clear();
  }

  /// todo追加
  Future<void> addTodo(TextEditingController textController) async {
    final String text = textController.text;
    if (text.trim().isEmpty) {
      return;
    }
    textController.text = '';
    final now = DateTime.now();
    final newTodo = Todo(id: now.millisecondsSinceEpoch.toString(), title: text, timestamp: now);
    final List<Todo> newTodoList = [newTodo, ...(_read(_todoListState) ?? [])];
    _read(_todoListState.notifier).state = newTodoList;
    await _read(todoRepository).saveTodoList(newTodoList);
  }

  /// todo実行,非実行の切り替え
  Future<void> toggleDoneStatus(Todo todo) async {
    final List<Todo> newTodoList = [
      ...(_read(_todoListState) ?? []).map((e) => (e.id == todo.id) ? e.copyWith(done: !e.done) : e)
    ];
    _read(_todoListState.notifier).state = newTodoList;
    await _read(todoRepository).saveTodoList(newTodoList);
  }

  /// todoリストのソート
  void toggleSortOrder() {
    _read(_sortOrderState.notifier).state = _read(_sortOrderState) == SortOrder.asc ? SortOrder.desc : SortOrder.asc;
  }
}
