import 'package:auto_route/auto_route.dart';
import 'package:flutter_anime_list/presentation/auth/auth_screen.dart';
import 'package:flutter_anime_list/presentation/splash/splash_screen.dart';
import 'package:flutter_anime_list/presentation/init/init_screen.dart';
import 'package:flutter_anime_list/presentation/anime_list/anime_list_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

/// Main point of the application navigation.
@AutoRouterConfig(replaceInRouteName: 'ScreenWidget|Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: '/auth',
          page: AuthRoute.page,
        ),
        AutoRoute(
          path: '/init',
          page: InitRoute.page,
        ),
        AutoRoute(
          path: '/anime_list',
          page: AnimeListRoute.page,
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();

  /// [AppRouter] constructor.
  AppRouter();
}
