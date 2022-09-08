import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_sample/models/counter/counter.dart';

/// A provider that creates and listen to a [StateNotifier].
///
/// Providers are declared as global variables.
/// This does not hinder testability, as the state of a provider is instead
/// stored inside a [ProviderScope].
final counterProvider =
    StateNotifierProvider<CounterNotifier, Counter>((_) => CounterNotifier());

/// A simple [StateNotifier] that implements a counter.
///
/// It doesn't have to be a [StateNotifier], and could be anything else such as:
/// - [ChangeNotifier], with [ChangeNotifierProvider]
/// - [Stream], with [StreamProvider]
/// ...
class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(const Counter());
  /// あえてfreezedで作成したのでimmutableな為、インクリメントするのにインスタンス生成してる
  void increment() => state = Counter(counter: state.counter + 1);
}
