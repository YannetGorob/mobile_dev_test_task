import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_state.freezed.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial() = Initial;

  const factory AuthorizationState.loading() = Loading;

  const factory AuthorizationState.loaded() = Loaded;

  const factory AuthorizationState.error([String? message]) = Error;
}
