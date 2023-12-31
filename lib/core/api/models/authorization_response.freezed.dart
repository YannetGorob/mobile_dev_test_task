// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizationResponse _$AuthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthorizationResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthorizationResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationResponseCopyWith<AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationResponseCopyWith<$Res> {
  factory $AuthorizationResponseCopyWith(AuthorizationResponse value,
          $Res Function(AuthorizationResponse) then) =
      _$AuthorizationResponseCopyWithImpl<$Res, AuthorizationResponse>;
  @useResult
  $Res call({String? name, String? email, String? message});
}

/// @nodoc
class _$AuthorizationResponseCopyWithImpl<$Res,
        $Val extends AuthorizationResponse>
    implements $AuthorizationResponseCopyWith<$Res> {
  _$AuthorizationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationResponseCopyWith<$Res>
    implements $AuthorizationResponseCopyWith<$Res> {
  factory _$$_AuthorizationResponseCopyWith(_$_AuthorizationResponse value,
          $Res Function(_$_AuthorizationResponse) then) =
      __$$_AuthorizationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? message});
}

/// @nodoc
class __$$_AuthorizationResponseCopyWithImpl<$Res>
    extends _$AuthorizationResponseCopyWithImpl<$Res, _$_AuthorizationResponse>
    implements _$$_AuthorizationResponseCopyWith<$Res> {
  __$$_AuthorizationResponseCopyWithImpl(_$_AuthorizationResponse _value,
      $Res Function(_$_AuthorizationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AuthorizationResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorizationResponse implements _AuthorizationResponse {
  const _$_AuthorizationResponse({this.name, this.email, this.message});

  factory _$_AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorizationResponseFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthorizationResponse(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationResponseCopyWith<_$_AuthorizationResponse> get copyWith =>
      __$$_AuthorizationResponseCopyWithImpl<_$_AuthorizationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorizationResponseToJson(
      this,
    );
  }
}

abstract class _AuthorizationResponse implements AuthorizationResponse {
  const factory _AuthorizationResponse(
      {final String? name,
      final String? email,
      final String? message}) = _$_AuthorizationResponse;

  factory _AuthorizationResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorizationResponse.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationResponseCopyWith<_$_AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
