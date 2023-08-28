// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_request_dto.freezed.dart';
part 'refresh_token_request_dto.g.dart';

/// DTO for login request by email and password.
@Freezed(toJson: true, fromJson: false)
class RefreshTokenRequestDto with _$RefreshTokenRequestDto {
  /// Creates an instance [RefreshTokenRequestDto].
  const factory RefreshTokenRequestDto({
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'grant_type') @Default('refresh_token') String grantType,
  }) = _RefreshTokenRequestDto;
}
