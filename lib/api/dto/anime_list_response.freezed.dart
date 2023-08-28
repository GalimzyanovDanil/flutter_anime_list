// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimeListResponse _$AnimeListResponseFromJson(Map<String, dynamic> json) {
  return _AnimeListResponse.fromJson(json);
}

/// @nodoc
mixin _$AnimeListResponse {
  List<AnimeWrapperDto> get data => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeListResponseCopyWith<AnimeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListResponseCopyWith<$Res> {
  factory $AnimeListResponseCopyWith(
          AnimeListResponse value, $Res Function(AnimeListResponse) then) =
      _$AnimeListResponseCopyWithImpl<$Res, AnimeListResponse>;
  @useResult
  $Res call({List<AnimeWrapperDto> data, Paging paging});

  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$AnimeListResponseCopyWithImpl<$Res, $Val extends AnimeListResponse>
    implements $AnimeListResponseCopyWith<$Res> {
  _$AnimeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? paging = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeWrapperDto>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeListResponseCopyWith<$Res>
    implements $AnimeListResponseCopyWith<$Res> {
  factory _$$_AnimeListResponseCopyWith(_$_AnimeListResponse value,
          $Res Function(_$_AnimeListResponse) then) =
      __$$_AnimeListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeWrapperDto> data, Paging paging});

  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_AnimeListResponseCopyWithImpl<$Res>
    extends _$AnimeListResponseCopyWithImpl<$Res, _$_AnimeListResponse>
    implements _$$_AnimeListResponseCopyWith<$Res> {
  __$$_AnimeListResponseCopyWithImpl(
      _$_AnimeListResponse _value, $Res Function(_$_AnimeListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? paging = null,
  }) {
    return _then(_$_AnimeListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeWrapperDto>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeListResponse implements _AnimeListResponse {
  _$_AnimeListResponse(
      {required final List<AnimeWrapperDto> data, required this.paging})
      : _data = data;

  factory _$_AnimeListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeListResponseFromJson(json);

  final List<AnimeWrapperDto> _data;
  @override
  List<AnimeWrapperDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Paging paging;

  @override
  String toString() {
    return 'AnimeListResponse(data: $data, paging: $paging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeListResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.paging, paging) || other.paging == paging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), paging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeListResponseCopyWith<_$_AnimeListResponse> get copyWith =>
      __$$_AnimeListResponseCopyWithImpl<_$_AnimeListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeListResponseToJson(
      this,
    );
  }
}

abstract class _AnimeListResponse implements AnimeListResponse {
  factory _AnimeListResponse(
      {required final List<AnimeWrapperDto> data,
      required final Paging paging}) = _$_AnimeListResponse;

  factory _AnimeListResponse.fromJson(Map<String, dynamic> json) =
      _$_AnimeListResponse.fromJson;

  @override
  List<AnimeWrapperDto> get data;
  @override
  Paging get paging;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeListResponseCopyWith<_$_AnimeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeWrapperDto _$AnimeWrapperDtoFromJson(Map<String, dynamic> json) {
  return _AnimeWrapperDto.fromJson(json);
}

/// @nodoc
mixin _$AnimeWrapperDto {
  AnimeDto get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeWrapperDtoCopyWith<AnimeWrapperDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeWrapperDtoCopyWith<$Res> {
  factory $AnimeWrapperDtoCopyWith(
          AnimeWrapperDto value, $Res Function(AnimeWrapperDto) then) =
      _$AnimeWrapperDtoCopyWithImpl<$Res, AnimeWrapperDto>;
  @useResult
  $Res call({AnimeDto node});

  $AnimeDtoCopyWith<$Res> get node;
}

/// @nodoc
class _$AnimeWrapperDtoCopyWithImpl<$Res, $Val extends AnimeWrapperDto>
    implements $AnimeWrapperDtoCopyWith<$Res> {
  _$AnimeWrapperDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_value.copyWith(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as AnimeDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeDtoCopyWith<$Res> get node {
    return $AnimeDtoCopyWith<$Res>(_value.node, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeWrapperDtoCopyWith<$Res>
    implements $AnimeWrapperDtoCopyWith<$Res> {
  factory _$$_AnimeWrapperDtoCopyWith(
          _$_AnimeWrapperDto value, $Res Function(_$_AnimeWrapperDto) then) =
      __$$_AnimeWrapperDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeDto node});

  @override
  $AnimeDtoCopyWith<$Res> get node;
}

/// @nodoc
class __$$_AnimeWrapperDtoCopyWithImpl<$Res>
    extends _$AnimeWrapperDtoCopyWithImpl<$Res, _$_AnimeWrapperDto>
    implements _$$_AnimeWrapperDtoCopyWith<$Res> {
  __$$_AnimeWrapperDtoCopyWithImpl(
      _$_AnimeWrapperDto _value, $Res Function(_$_AnimeWrapperDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = null,
  }) {
    return _then(_$_AnimeWrapperDto(
      node: null == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as AnimeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeWrapperDto implements _AnimeWrapperDto {
  _$_AnimeWrapperDto({required this.node});

  factory _$_AnimeWrapperDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeWrapperDtoFromJson(json);

  @override
  final AnimeDto node;

  @override
  String toString() {
    return 'AnimeWrapperDto(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeWrapperDto &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeWrapperDtoCopyWith<_$_AnimeWrapperDto> get copyWith =>
      __$$_AnimeWrapperDtoCopyWithImpl<_$_AnimeWrapperDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeWrapperDtoToJson(
      this,
    );
  }
}

abstract class _AnimeWrapperDto implements AnimeWrapperDto {
  factory _AnimeWrapperDto({required final AnimeDto node}) = _$_AnimeWrapperDto;

  factory _AnimeWrapperDto.fromJson(Map<String, dynamic> json) =
      _$_AnimeWrapperDto.fromJson;

  @override
  AnimeDto get node;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeWrapperDtoCopyWith<_$_AnimeWrapperDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeDto _$AnimeDtoFromJson(Map<String, dynamic> json) {
  return _AnimeDto.fromJson(json);
}

/// @nodoc
mixin _$AnimeDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_picture')
  MainPicture get mainPicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeDtoCopyWith<AnimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeDtoCopyWith<$Res> {
  factory $AnimeDtoCopyWith(AnimeDto value, $Res Function(AnimeDto) then) =
      _$AnimeDtoCopyWithImpl<$Res, AnimeDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'main_picture') MainPicture mainPicture});

  $MainPictureCopyWith<$Res> get mainPicture;
}

/// @nodoc
class _$AnimeDtoCopyWithImpl<$Res, $Val extends AnimeDto>
    implements $AnimeDtoCopyWith<$Res> {
  _$AnimeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mainPicture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mainPicture: null == mainPicture
          ? _value.mainPicture
          : mainPicture // ignore: cast_nullable_to_non_nullable
              as MainPicture,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainPictureCopyWith<$Res> get mainPicture {
    return $MainPictureCopyWith<$Res>(_value.mainPicture, (value) {
      return _then(_value.copyWith(mainPicture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeDtoCopyWith<$Res> implements $AnimeDtoCopyWith<$Res> {
  factory _$$_AnimeDtoCopyWith(
          _$_AnimeDto value, $Res Function(_$_AnimeDto) then) =
      __$$_AnimeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'main_picture') MainPicture mainPicture});

  @override
  $MainPictureCopyWith<$Res> get mainPicture;
}

/// @nodoc
class __$$_AnimeDtoCopyWithImpl<$Res>
    extends _$AnimeDtoCopyWithImpl<$Res, _$_AnimeDto>
    implements _$$_AnimeDtoCopyWith<$Res> {
  __$$_AnimeDtoCopyWithImpl(
      _$_AnimeDto _value, $Res Function(_$_AnimeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mainPicture = null,
  }) {
    return _then(_$_AnimeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mainPicture: null == mainPicture
          ? _value.mainPicture
          : mainPicture // ignore: cast_nullable_to_non_nullable
              as MainPicture,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeDto implements _AnimeDto {
  _$_AnimeDto(
      {required this.id,
      required this.title,
      @JsonKey(name: 'main_picture') required this.mainPicture});

  factory _$_AnimeDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'main_picture')
  final MainPicture mainPicture;

  @override
  String toString() {
    return 'AnimeDto(id: $id, title: $title, mainPicture: $mainPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mainPicture, mainPicture) ||
                other.mainPicture == mainPicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, mainPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeDtoCopyWith<_$_AnimeDto> get copyWith =>
      __$$_AnimeDtoCopyWithImpl<_$_AnimeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeDtoToJson(
      this,
    );
  }
}

abstract class _AnimeDto implements AnimeDto {
  factory _AnimeDto(
      {required final int id,
      required final String title,
      @JsonKey(name: 'main_picture')
      required final MainPicture mainPicture}) = _$_AnimeDto;

  factory _AnimeDto.fromJson(Map<String, dynamic> json) = _$_AnimeDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'main_picture')
  MainPicture get mainPicture;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeDtoCopyWith<_$_AnimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MainPicture _$MainPictureFromJson(Map<String, dynamic> json) {
  return _MainPicture.fromJson(json);
}

/// @nodoc
mixin _$MainPicture {
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainPictureCopyWith<MainPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPictureCopyWith<$Res> {
  factory $MainPictureCopyWith(
          MainPicture value, $Res Function(MainPicture) then) =
      _$MainPictureCopyWithImpl<$Res, MainPicture>;
  @useResult
  $Res call({String medium, String large});
}

/// @nodoc
class _$MainPictureCopyWithImpl<$Res, $Val extends MainPicture>
    implements $MainPictureCopyWith<$Res> {
  _$MainPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPictureCopyWith<$Res>
    implements $MainPictureCopyWith<$Res> {
  factory _$$_MainPictureCopyWith(
          _$_MainPicture value, $Res Function(_$_MainPicture) then) =
      __$$_MainPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medium, String large});
}

/// @nodoc
class __$$_MainPictureCopyWithImpl<$Res>
    extends _$MainPictureCopyWithImpl<$Res, _$_MainPicture>
    implements _$$_MainPictureCopyWith<$Res> {
  __$$_MainPictureCopyWithImpl(
      _$_MainPicture _value, $Res Function(_$_MainPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$_MainPicture(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainPicture implements _MainPicture {
  _$_MainPicture({required this.medium, required this.large});

  factory _$_MainPicture.fromJson(Map<String, dynamic> json) =>
      _$$_MainPictureFromJson(json);

  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'MainPicture(medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPicture &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPictureCopyWith<_$_MainPicture> get copyWith =>
      __$$_MainPictureCopyWithImpl<_$_MainPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainPictureToJson(
      this,
    );
  }
}

abstract class _MainPicture implements MainPicture {
  factory _MainPicture(
      {required final String medium,
      required final String large}) = _$_MainPicture;

  factory _MainPicture.fromJson(Map<String, dynamic> json) =
      _$_MainPicture.fromJson;

  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$_MainPictureCopyWith<_$_MainPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call({String next});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String next});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$_Paging>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
  }) {
    return _then(_$_Paging(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  _$_Paging({required this.next});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  final String next;

  @override
  String toString() {
    return 'Paging(next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  factory _Paging({required final String next}) = _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}
