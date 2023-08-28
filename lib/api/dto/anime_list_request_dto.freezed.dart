// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_list_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeListRequestDto {
  @JsonKey(name: 'q')
  String get search => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeListRequestDtoCopyWith<AnimeListRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListRequestDtoCopyWith<$Res> {
  factory $AnimeListRequestDtoCopyWith(
          AnimeListRequestDto value, $Res Function(AnimeListRequestDto) then) =
      _$AnimeListRequestDtoCopyWithImpl<$Res, AnimeListRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'q') String search, int limit, int offset});
}

/// @nodoc
class _$AnimeListRequestDtoCopyWithImpl<$Res, $Val extends AnimeListRequestDto>
    implements $AnimeListRequestDtoCopyWith<$Res> {
  _$AnimeListRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeListRequestDtoCopyWith<$Res>
    implements $AnimeListRequestDtoCopyWith<$Res> {
  factory _$$_AnimeListRequestDtoCopyWith(_$_AnimeListRequestDto value,
          $Res Function(_$_AnimeListRequestDto) then) =
      __$$_AnimeListRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'q') String search, int limit, int offset});
}

/// @nodoc
class __$$_AnimeListRequestDtoCopyWithImpl<$Res>
    extends _$AnimeListRequestDtoCopyWithImpl<$Res, _$_AnimeListRequestDto>
    implements _$$_AnimeListRequestDtoCopyWith<$Res> {
  __$$_AnimeListRequestDtoCopyWithImpl(_$_AnimeListRequestDto _value,
      $Res Function(_$_AnimeListRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_AnimeListRequestDto(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_AnimeListRequestDto implements _AnimeListRequestDto {
  const _$_AnimeListRequestDto(
      {@JsonKey(name: 'q') this.search = 'one',
      this.limit = 10,
      this.offset = 0});

  @override
  @JsonKey(name: 'q')
  final String search;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'AnimeListRequestDto(search: $search, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeListRequestDto &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeListRequestDtoCopyWith<_$_AnimeListRequestDto> get copyWith =>
      __$$_AnimeListRequestDtoCopyWithImpl<_$_AnimeListRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeListRequestDtoToJson(
      this,
    );
  }
}

abstract class _AnimeListRequestDto implements AnimeListRequestDto {
  const factory _AnimeListRequestDto(
      {@JsonKey(name: 'q') final String search,
      final int limit,
      final int offset}) = _$_AnimeListRequestDto;

  @override
  @JsonKey(name: 'q')
  String get search;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeListRequestDtoCopyWith<_$_AnimeListRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
