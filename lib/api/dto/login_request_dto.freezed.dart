// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginRequestDto {
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_type')
  String get grantType => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_verifier')
  String get codeVerifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestDtoCopyWith<LoginRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestDtoCopyWith<$Res> {
  factory $LoginRequestDtoCopyWith(
          LoginRequestDto value, $Res Function(LoginRequestDto) then) =
      _$LoginRequestDtoCopyWithImpl<$Res, LoginRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'grant_type') String grantType,
      String code,
      @JsonKey(name: 'code_verifier') String codeVerifier});
}

/// @nodoc
class _$LoginRequestDtoCopyWithImpl<$Res, $Val extends LoginRequestDto>
    implements $LoginRequestDtoCopyWith<$Res> {
  _$LoginRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? grantType = null,
    Object? code = null,
    Object? codeVerifier = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _value.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestDtoCopyWith<$Res>
    implements $LoginRequestDtoCopyWith<$Res> {
  factory _$$_LoginRequestDtoCopyWith(
          _$_LoginRequestDto value, $Res Function(_$_LoginRequestDto) then) =
      __$$_LoginRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'grant_type') String grantType,
      String code,
      @JsonKey(name: 'code_verifier') String codeVerifier});
}

/// @nodoc
class __$$_LoginRequestDtoCopyWithImpl<$Res>
    extends _$LoginRequestDtoCopyWithImpl<$Res, _$_LoginRequestDto>
    implements _$$_LoginRequestDtoCopyWith<$Res> {
  __$$_LoginRequestDtoCopyWithImpl(
      _$_LoginRequestDto _value, $Res Function(_$_LoginRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? grantType = null,
    Object? code = null,
    Object? codeVerifier = null,
  }) {
    return _then(_$_LoginRequestDto(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _value.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_LoginRequestDto implements _LoginRequestDto {
  const _$_LoginRequestDto(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'grant_type') this.grantType = 'authorization_code',
      required this.code,
      @JsonKey(name: 'code_verifier') required this.codeVerifier});

  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;
  @override
  final String code;
  @override
  @JsonKey(name: 'code_verifier')
  final String codeVerifier;

  @override
  String toString() {
    return 'LoginRequestDto(clientId: $clientId, grantType: $grantType, code: $code, codeVerifier: $codeVerifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestDto &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeVerifier, codeVerifier) ||
                other.codeVerifier == codeVerifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, grantType, code, codeVerifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestDtoCopyWith<_$_LoginRequestDto> get copyWith =>
      __$$_LoginRequestDtoCopyWithImpl<_$_LoginRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestDtoToJson(
      this,
    );
  }
}

abstract class _LoginRequestDto implements LoginRequestDto {
  const factory _LoginRequestDto(
          {@JsonKey(name: 'client_id') required final String clientId,
          @JsonKey(name: 'grant_type') final String grantType,
          required final String code,
          @JsonKey(name: 'code_verifier') required final String codeVerifier}) =
      _$_LoginRequestDto;

  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'grant_type')
  String get grantType;
  @override
  String get code;
  @override
  @JsonKey(name: 'code_verifier')
  String get codeVerifier;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestDtoCopyWith<_$_LoginRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
