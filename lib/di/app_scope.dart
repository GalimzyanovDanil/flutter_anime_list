import 'package:dio/dio.dart';
import 'package:flutter_anime_list/api/api.dart';
import 'package:flutter_anime_list/core/interceptors/auth_token_interceptor.dart';
import 'package:flutter_anime_list/persistance/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppScope {
  late final SecureStorage _storage;
  late Api _api;
  late final Dio _dio;
  final _baseStorage = const FlutterSecureStorage();

  SecureStorage get storage => _storage;
  Api get api => _api;

  AppScope() {
    _initScope();
  }

  Future<void> _initScope() async {
    _storage = SecureStorage(storage: _baseStorage);

    _dio = Dio()..options.contentType = 'application/x-www-form-urlencoded';
    _api = Api(_dio);
    _dio.interceptors.add(AuthTokenInterceptor(storage: _storage, api: _api));
    _api = Api(_dio);
  }
}
