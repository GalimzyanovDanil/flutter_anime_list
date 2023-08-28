// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RefreshTokenRequestDto {
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_type')
  String get grantType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestDtoCopyWith<RefreshTokenRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestDtoCopyWith<$Res> {
  factory $RefreshTokenRequestDtoCopyWith(RefreshTokenRequestDto value,
          $Res Function(RefreshTokenRequestDto) then) =
      _$RefreshTokenRequestDtoCopyWithImpl<$Res, RefreshTokenRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}

/// @nodoc
class _$RefreshTokenRequestDtoCopyWithImpl<$Res,
        $Val extends RefreshTokenRequestDto>
    implements $RefreshTokenRequestDtoCopyWith<$Res> {
  _$RefreshTokenRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? refreshToken = null,
    Object? grantType = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenRequestDtoCopyWith<$Res>
    implements $RefreshTokenRequestDtoCopyWith<$Res> {
  factory _$$_RefreshTokenRequestDtoCopyWith(_$_RefreshTokenRequestDto value,
          $Res Function(_$_RefreshTokenRequestDto) then) =
      __$$_RefreshTokenRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}

/// @nodoc
class __$$_RefreshTokenRequestDtoCopyWithImpl<$Res>
    extends _$RefreshTokenRequestDtoCopyWithImpl<$Res,
        _$_RefreshTokenRequestDto>
    implements _$$_RefreshTokenRequestDtoCopyWith<$Res> {
  __$$_RefreshTokenRequestDtoCopyWithImpl(_$_RefreshTokenRequestDto _value,
      $Res Function(_$_RefreshTokenRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? refreshToken = null,
    Object? grantType = null,
  }) {
    return _then(_$_RefreshTokenRequestDto(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_RefreshTokenRequestDto implements _RefreshTokenRequestDto {
  const _$_RefreshTokenRequestDto(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'grant_type') this.grantType = 'refresh_token'});

  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;

  @override
  String toString() {
    return 'RefreshTokenRequestDto(clientId: $clientId, refreshToken: $refreshToken, grantType: $grantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenRequestDto &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, refreshToken, grantType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenRequestDtoCopyWith<_$_RefreshTokenRequestDto> get copyWith =>
      __$$_RefreshTokenRequestDtoCopyWithImpl<_$_RefreshTokenRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenRequestDtoToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequestDto implements RefreshTokenRequestDto {
  const factory _RefreshTokenRequestDto(
          {@JsonKey(name: 'client_id') required final String clientId,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'grant_type') final String grantType}) =
      _$_RefreshTokenRequestDto;

  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'grant_type')
  String get grantType;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenRequestDtoCopyWith<_$_RefreshTokenRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
