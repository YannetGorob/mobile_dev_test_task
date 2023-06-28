import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponce {
  const factory AuthResponse({
    String? name,
    String? email,
    String? message,
  }) = _AuthResponce;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponceFromJson(json);
}
