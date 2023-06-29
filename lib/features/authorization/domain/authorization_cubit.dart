import 'package:bloc/bloc.dart';
import 'package:mobile_dev_test_task/core/api/providers/authorization_provider.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_state.dart';

class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit({required AuthorizationProvider authorizationProvider})
      : _authorizationProvider = authorizationProvider,
        super(const AuthorizationState.initial());

  final AuthorizationProvider _authorizationProvider;

  Future<void> sendData({
    required String name,
    required String email,
    required String message,
  }) async {
    emit(const AuthorizationState.loading());
    final authorizationResponse = await _authorizationProvider.sendForm(
      name: name,
      email: email,
      message: message,
    );

    authorizationResponse.when(
      success: (data) {
        emit(const AuthorizationState.loaded());
      },
      failure: (_) => emit(const AuthorizationState.error()),
    );
  }

  String? validateInputValue(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required field';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required field';
    }
    final emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value);
    if (!emailValid) {
      return 'Enter a valid email address.';
    }
    return null;
  }
}
