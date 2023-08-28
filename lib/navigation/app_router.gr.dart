// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnimeListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnimeListScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthScreen(
          verifyCode: args.verifyCode,
          key: args.key,
        ),
      );
    },
    InitRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AnimeListScreen]
class AnimeListRoute extends PageRouteInfo<void> {
  const AnimeListRoute({List<PageRouteInfo>? children})
      : super(
          AnimeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnimeListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    required String verifyCode,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            verifyCode: verifyCode,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    required this.verifyCode,
    this.key,
  });

  final String verifyCode;

  final Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{verifyCode: $verifyCode, key: $key}';
  }
}

/// generated route for
/// [InitScreen]
class InitRoute extends PageRouteInfo<void> {
  const InitRoute({List<PageRouteInfo>? children})
      : super(
          InitRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
