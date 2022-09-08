import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/routing/app_router.dart';
import '../../providers/counter_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider).counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod counter example'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            '$count',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: () => const TodoRoute().push(context),
              child:(const Text('TODO SCREEN',)),
            )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
