// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorizationResponse _$$_AuthorizationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthorizationResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_AuthorizationResponseToJson(
        _$_AuthorizationResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'message': instance.message,
    };
