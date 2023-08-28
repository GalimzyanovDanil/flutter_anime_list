import 'package:flutter/material.dart';
import 'package:flutter_anime_list/di/app_scope.dart';
import 'package:flutter_anime_list/navigation/app_router.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<AppScope>(
      create: (_) => AppScope(),
      builder: (_, __) => MaterialApp.router(
        routeInformationParser: _router.defaultRouteParser(),
        routerDelegate: _router.delegate(),
      ),
    );
  }
}
