import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_response.freezed.dart';
part 'authorization_response.g.dart';

@freezed
class AuthorizationResponse with _$AuthorizationResponse {
  const factory AuthorizationResponse({
    String? name,
    String? email,
    String? message,
  }) = _AuthorizationResponse;

  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseFromJson(json);
}
