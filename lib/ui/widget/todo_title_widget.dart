import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/models/todo/todo.dart';
import 'package:riverpod_sample/providers/todo_provider.dart';

class TodoTile extends HookConsumerWidget {
  final Todo todo;
  const TodoTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(todo.title),
        leading: IconButton(
          icon:
              todo.done ?
              const Icon(Icons.check_box, color: Colors.green) :
              const Icon(Icons.check_box_outline_blank),
          // チェックをつける.
          onPressed: () => ref.read(todoNotifier.notifier).toggleDoneStatus(todo),
        ),
        trailing: Text(todo.timestamp.toIso8601String()),
      ),
    );
  }
}
