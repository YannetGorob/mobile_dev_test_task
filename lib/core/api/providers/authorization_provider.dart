import 'package:mobile_dev_test_task/core/api/base/api_result.dart';
import 'package:mobile_dev_test_task/core/api/base/base_network.dart';
import 'package:mobile_dev_test_task/core/api/models/authorization_response.dart';

class AuthorizationProvider {
  AuthorizationProvider(this._network);

  final BaseNetwork _network;

  Future<ApiResult<AuthorizationResponse>> sendForm({
    required String name,
    required String email,
    required String message,
  }) {
    return _network.sendRequest(
      path: 'https://api.byteplex.info/api/test/contact/',
      body: <String, dynamic>{
        'name': name,
        'email': email,
        'message': message,
      },
    );
  }
}
