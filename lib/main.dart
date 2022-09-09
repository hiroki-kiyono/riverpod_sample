import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_sample/routing/app_router.dart';

void main() => runApp(ProviderScope(child: Application()));

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  /// タイトル.
  static const title = 'Flutter Demo';

  /// go_router_builderで作成したGoRouteクラスを設定.
  final _router = GoRouter(routes: $appRoutes);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: title,
      );
}
