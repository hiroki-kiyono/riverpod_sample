import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:riverpod_sample/models/todo/todo_state.dart';
import 'package:riverpod_sample/providers/todo_provider.dart';

import '../widget/todo_title_widget.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Todo>? todoList = ref.watch(sortedTodoListState);

    // notify(loading状態の監視)
    final todo = ref.watch(todoAutoDisposeNotifier);
    if (todo is TodoListStateLoading || todoList == null) {
      return const Center(child: CircularProgressIndicator());
    }
    // 取得方法2
    // if (todo is TodoListStateData) {
    //   todoList == todo.todoList;
    // }
    // 取得方法3
    // todoList = todo.maybeWhen((todoList) => todoList, orElse: () => []);

    // 入力内容の監視コントローラ.
    final textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO SCREEN'),
      ),
      body: Column(children: [
        TextField(controller: textController),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.sort),
              // ソート順変更
              onPressed: () => ref.read(todoAutoDisposeNotifier.notifier).toggleSortOrder(),
            )
          ],
        ),
        Expanded(
          // todoリスト表示
          child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, int index) => TodoTile(todo: todoList[index]),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        // todo 追加.
        onPressed: () => ref.read(todoAutoDisposeNotifier.notifier).addTodo(textController),
        child: const Icon(Icons.add),
      ),
    );
  }
}
