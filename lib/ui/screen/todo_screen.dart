import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:riverpod_sample/providers/todo_provider.dart';

import '../widget/todo_title_widget.dart';

class TodoScreen extends HookConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データのフェッチ.
    useEffect(() {
      ref.read(todoViewController).initState();
      return ref.read(todoViewController).dispose;
    }, []);
    // 入力内容の監視コントローラ.
    final textController = useTextEditingController();
    // todoリスト取得.
    final List<Todo>? todoList = ref.watch(sortedTodoListState);
    if (todoList == null) {
      return const Center(child: CircularProgressIndicator());
    }

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
              onPressed: () => ref.read(todoViewController).toggleSortOrder(),
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
        onPressed: () => ref.read(todoViewController).addTodo(textController),
        child: const Icon(Icons.add),
      ),
    );
  }
}
