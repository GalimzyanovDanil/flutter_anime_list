import 'package:dio/dio.dart';
import 'package:flutter_anime_list/api/api.dart';
import 'package:flutter_anime_list/api/dto/refresh_token_request_dto.dart';
import 'package:flutter_anime_list/core/constants.dart';
import 'package:flutter_anime_list/persistance/secure_storage.dart';

class AuthTokenInterceptor extends Interceptor {
  final SecureStorage _storage;
  final Api _api;

  AuthTokenInterceptor({
    required SecureStorage storage,
    required Api api,
  })  : _storage = storage,
        _api = api;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final expiresAt = await _storage.read(StorageQueryKey.expiresAt);

    if (expiresAt == null) {
      super.onRequest(options, handler);
      return;
    }

    // Получаем дату истечения срока действия токена.
    final date = DateTime.parse(expiresAt).toUtc();

    // Если дата истечения срока действия токена меньше текущей,
    // то пытаемся обновить токен.
    final dateTimeNowUTC = DateTime.now().toUtc();

    final isLater = date.isAfter(dateTimeNowUTC);

    if (isLater) {
      final refreshToken = await _storage.read(StorageQueryKey.refreshToken);
      // Если прочитанный токен null, то реджектим запрос с ошибкой,
      // что бы потом выбросить пользователя из авторизованной зоны.
      if (refreshToken == null) {
        handler.reject(
          DioException.requestCancelled(
            requestOptions: options,
            reason: 'Refresh token not found',
          ),
        );
        return;
      }
      // Создаем запрос на рефреш токена доступа.
      final request = RefreshTokenRequestDto(
        clientId: clientId,
        refreshToken: refreshToken,
      );

      // Нужен другой АПИ клиент!
      final response = await _api.refreshingAccessToken(request);
      await _storage.write(response.accessToken, StorageQueryKey.accessToken);
      await _storage.write(response.refreshToken, StorageQueryKey.refreshToken);
      final expDate = DateTime.now()
          .add(
            Duration(seconds: response.expiresIn),
          )
          .toUtc();
      await _storage.write(expDate.toString(), StorageQueryKey.expiresAt);
    }

    final accessToken = await _storage.read(StorageQueryKey.accessToken);

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }
}
