import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/ui/screen/home_screen.dart';
import 'package:riverpod_sample/ui/screen/todo_screen.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomeRoute>(
    path: "/",
    routes: <TypedGoRoute<GoRouteData>>[
      TypedGoRoute<TodoRoute>(path: 'todo')
    ])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

class TodoRoute extends GoRouteData {
  const TodoRoute();

  @override
  Widget build(BuildContext context) => const TodoScreen();
}
