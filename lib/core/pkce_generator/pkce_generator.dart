import 'dart:convert';
import 'dart:math';

/// Генератор для кода верификации.
class PkceGenerator {
  static String getNewCodeVerifier() {
    final random = Random.secure();
    final List<int> values = List.generate(100, (index) => random.nextInt(256));
    final codeVerifier = base64Url.encode(values).substring(0, 128);
    return codeVerifier;
  }
}
