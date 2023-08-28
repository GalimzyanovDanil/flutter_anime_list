// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeListResponse _$$_AnimeListResponseFromJson(Map<String, dynamic> json) =>
    _$_AnimeListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => AnimeWrapperDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimeListResponseToJson(
        _$_AnimeListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'paging': instance.paging,
    };

_$_AnimeWrapperDto _$$_AnimeWrapperDtoFromJson(Map<String, dynamic> json) =>
    _$_AnimeWrapperDto(
      node: AnimeDto.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimeWrapperDtoToJson(_$_AnimeWrapperDto instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_AnimeDto _$$_AnimeDtoFromJson(Map<String, dynamic> json) => _$_AnimeDto(
      id: json['id'] as int,
      title: json['title'] as String,
      mainPicture:
          MainPicture.fromJson(json['main_picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimeDtoToJson(_$_AnimeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'main_picture': instance.mainPicture,
    };

_$_MainPicture _$$_MainPictureFromJson(Map<String, dynamic> json) =>
    _$_MainPicture(
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$_MainPictureToJson(_$_MainPicture instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'large': instance.large,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      next: json['next'] as String,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'next': instance.next,
    };
