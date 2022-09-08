import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:riverpod_sample/models/todo/todo_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoNotifier extends StateNotifier<TodoListState> {
  TodoNotifier() : super(const TodoListState.loading());

  void createTodo(String title) {
    final currentState = state;
    if (currentState is TodoListStateData) {
      final id = currentState.todoList.length + 1;
      final newList = [...currentState.todoList, Todo(id: id, title: title)];
      state = currentState.copyWith(todoList: newList);
    }
  }

  void updateTodo(int id, String title) {
    final currentState = state;
    if (currentState is TodoListStateData) {
      final newList = currentState.todoList
          .map((todo) => todo.id == id ? Todo(id: id, title: title) : todo)
          .toList();
      state = currentState.copyWith(todoList: newList);
    }
  }

  void deleteTodo(int id) {
    final currentState = state;
    if (currentState is TodoListStateData) {
      final newList =
          currentState.todoList.where((todo) => todo.id != id).toList();
      state = currentState.copyWith(todoList: newList);
    }
  }
}
