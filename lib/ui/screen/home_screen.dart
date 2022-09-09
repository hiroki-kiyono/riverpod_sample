import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/providers/counter_provider.dart';
import 'package:riverpod_sample/routing/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider).counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod counter example'),
      ),
      body: Center(
          child: Column(children: [
        Text('$count', style: Theme.of(context).textTheme.headline4),
        ElevatedButton(
            onPressed: () => const TodoRoute().push(context),
            child: (const Text('TODO SCREEN')))
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
