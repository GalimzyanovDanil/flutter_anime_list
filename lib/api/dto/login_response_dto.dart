// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

/// DTO ответ запроса сессии пользователя.
@Freezed(toJson: false, fromJson: true)
class LoginResponseDto with _$LoginResponseDto {
  /// Create an instance of [LoginResponseDto].
  const factory LoginResponseDto({
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _LoginResponseDto;

  /// Конструктор из json.
  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
