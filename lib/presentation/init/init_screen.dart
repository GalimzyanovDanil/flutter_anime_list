import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_list/api/dto/login_request_dto.dart';
import 'package:flutter_anime_list/api/dto/login_response_dto.dart';
import 'package:flutter_anime_list/core/constants.dart';
import 'package:flutter_anime_list/di/app_scope.dart';
import 'package:flutter_anime_list/navigation/app_router.dart';
import 'package:flutter_anime_list/persistance/secure_storage.dart';
import 'package:flutter_anime_list/presentation/widgets/full_screen_loader.dart';
import 'package:provider/provider.dart';

@RoutePage()
class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  void initState() {
    super.initState();
    _init().then((_) => context.router.replace(const AnimeListRoute()));
  }

  @override
  Widget build(BuildContext _) => _InitView(this);

  Future<void> _init() async {
    final scope = context.read<AppScope>();

    final verifyCode = await scope.storage.read(StorageQueryKey.verifyCode);
    final authCode = await scope.storage.read(StorageQueryKey.authCode);

    if (verifyCode == null || authCode == null) {
      return;
    }

    final request = LoginRequestDto(
      clientId: clientId,
      code: authCode,
      codeVerifier: verifyCode,
    );

    late final LoginResponseDto response;

    try {
      response = await scope.api.authorization(request);
    } on Object catch (e) {
      debugPrint(e.toString());
      return;
    }

    await scope.storage
        .write(response.accessToken, StorageQueryKey.accessToken);
    await scope.storage
        .write(response.refreshToken, StorageQueryKey.refreshToken);

    final expDate =
        DateTime.now().add(Duration(seconds: response.expiresIn)).toUtc();
    await scope.storage.write(expDate.toString(), StorageQueryKey.expiresAt);
  }
}

class _InitView extends StatelessWidget {
  /// Controller.
  final _InitScreenState controller;

  const _InitView(this.controller);

  @override
  Widget build(BuildContext context) {
    return const FullScreenLoader();
  }
}
