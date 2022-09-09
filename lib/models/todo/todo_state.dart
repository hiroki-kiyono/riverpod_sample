import 'package:freezed_annotation/freezed_annotation.dart';
import './todo.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const factory TodoListState.loading() = TodoListStateLoading;
  const factory TodoListState({required List<Todo> todoList}) = TodoListStateData;
}
