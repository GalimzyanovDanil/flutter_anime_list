import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_list/core/pkce_generator/pkce_generator.dart';
import 'package:flutter_anime_list/di/app_scope.dart';
import 'package:flutter_anime_list/navigation/app_router.dart';
import 'package:flutter_anime_list/persistance/secure_storage.dart';
import 'package:flutter_anime_list/presentation/widgets/full_screen_loader.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final String _verifyCode;

  @override
  void initState() {
    super.initState();
    _init().then(
        (_) => context.router.replace(AuthRoute(verifyCode: _verifyCode)));
  }

  @override
  Widget build(BuildContext _) => _SplashView(this);

  Future<void> _init() async {
    _verifyCode = PkceGenerator.getNewCodeVerifier();
    final localStorage = Provider.of<AppScope>(context, listen: false).storage;
    await localStorage.write(_verifyCode, StorageQueryKey.verifyCode);
    await Future<void>.delayed(const Duration(milliseconds: 1350));
  }
}

class _SplashView extends StatelessWidget {
  /// Controller.
  final _SplashScreenState controller;

  const _SplashView(this.controller);

  @override
  Widget build(BuildContext context) {
    return const FullScreenLoader();
  }
}
