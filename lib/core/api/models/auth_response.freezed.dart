// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponse _$AuthResponceFromJson(Map<String, dynamic> json) {
  return _AuthResponce.fromJson(json);
}

/// @nodoc
mixin _$AuthResponce {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponceCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponceCopyWith<$Res> {
  factory $AuthResponceCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponceCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String? name, String? email, String? message});
}

/// @nodoc
class _$AuthResponceCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponceCopyWith<$Res> {
  _$AuthResponceCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthResponceCopyWith<$Res>
    implements $AuthResponceCopyWith<$Res> {
  factory _$$_AuthResponceCopyWith(
          _$_AuthResponce value, $Res Function(_$_AuthResponce) then) =
      __$$_AuthResponceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? message});
}

/// @nodoc
class __$$_AuthResponceCopyWithImpl<$Res>
    extends _$AuthResponceCopyWithImpl<$Res, _$_AuthResponce>
    implements _$$_AuthResponceCopyWith<$Res> {
  __$$_AuthResponceCopyWithImpl(
      _$_AuthResponce _value, $Res Function(_$_AuthResponce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AuthResponce(
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
class _$_AuthResponce implements _AuthResponce {
  const _$_AuthResponce({this.name, this.email, this.message});

  factory _$_AuthResponce.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponceFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? message;

  @override
  String toString() {
    return 'AuthResponce(name: $name, email: $email, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponce &&
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
  _$$_AuthResponceCopyWith<_$_AuthResponce> get copyWith =>
      __$$_AuthResponceCopyWithImpl<_$_AuthResponce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponceToJson(
      this,
    );
  }
}

abstract class _AuthResponce implements AuthResponse {
  const factory _AuthResponce(
      {final String? name,
      final String? email,
      final String? message}) = _$_AuthResponce;

  factory _AuthResponce.fromJson(Map<String, dynamic> json) =
      _$_AuthResponce.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponceCopyWith<_$_AuthResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
