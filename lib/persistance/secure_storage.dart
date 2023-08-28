import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'storage_query_key.dart';

final class SecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorage({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  Future<void> write(
    String value,
    StorageQueryKey query,
  ) =>
      _storage.write(key: query.name, value: value);

  Future<String?> read(
    StorageQueryKey query,
  ) =>
      _storage.read(key: query.name);
}
