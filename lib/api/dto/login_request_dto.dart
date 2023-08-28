// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_dto.freezed.dart';
part 'login_request_dto.g.dart';

/// DTO for login request by email and password.
@Freezed(toJson: true, fromJson: false)
class LoginRequestDto with _$LoginRequestDto {
  /// Creates an instance [LoginRequestDto].
  const factory LoginRequestDto({
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'grant_type')
    @Default('authorization_code')
        String grantType,
    required String code,
    @JsonKey(name: 'code_verifier') required String codeVerifier,
  }) = _LoginRequestDto;
}
