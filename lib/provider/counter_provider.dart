import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A provider that creates and listen to a [StateNotifier].
///
/// Providers are declared as global variables.
/// This does not hinder testability, as the state of a provider is instead
/// stored inside a [ProviderScope].
final counterProvider = StateNotifierProvider<Counter, int>((_) => Counter());

/// A simple [StateNotifier] that implements a counter.
///
/// It doesn't have to be a [StateNotifier], and could be anything else such as:
/// - [ChangeNotifier], with [ChangeNotifierProvider]
/// - [Stream], with [StreamProvider]
/// ...
class Counter extends StateNotifier<int> {
  Counter() : super(0);
  void increment() => state++;
}