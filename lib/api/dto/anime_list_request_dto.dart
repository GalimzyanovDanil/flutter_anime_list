// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_list_request_dto.freezed.dart';
part 'anime_list_request_dto.g.dart';

/// DTO for login request by email and password.
@Freezed(toJson: true, fromJson: false)
class AnimeListRequestDto with _$AnimeListRequestDto {
  /// Creates an instance [AnimeListRequestDto].
  const factory AnimeListRequestDto({
    @JsonKey(name: 'q') @Default('one') String search,
    @Default(10) int limit,
    @Default(0) int offset,
  }) = _AnimeListRequestDto;
}
