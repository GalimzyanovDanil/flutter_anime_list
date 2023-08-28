// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_list_response.freezed.dart';
part 'anime_list_response.g.dart';

@freezed
class AnimeListResponse with _$AnimeListResponse {
  factory AnimeListResponse({
    required List<AnimeWrapperDto> data,
    required Paging paging,
  }) = _AnimeListResponse;

  factory AnimeListResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeListResponseFromJson(json);
}

@freezed
class AnimeWrapperDto with _$AnimeWrapperDto {
  factory AnimeWrapperDto({
    required AnimeDto node,
  }) = _AnimeWrapperDto;

  factory AnimeWrapperDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeWrapperDtoFromJson(json);
}

@freezed
class AnimeDto with _$AnimeDto {
  factory AnimeDto({
    required int id,
    required String title,
    @JsonKey(name: 'main_picture') required MainPicture mainPicture,
  }) = _AnimeDto;

  factory AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$AnimeDtoFromJson(json);
}

@freezed
class MainPicture with _$MainPicture {
  factory MainPicture({
    required String medium,
    required String large,
  }) = _MainPicture;

  factory MainPicture.fromJson(Map<String, dynamic> json) =>
      _$MainPictureFromJson(json);
}

@freezed
class Paging with _$Paging {
  factory Paging({
    required String next,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
