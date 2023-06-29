import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_dev_test_task/core/api/base/base_network.dart';
import 'package:mobile_dev_test_task/core/api/providers/authorization_provider.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_cubit.dart';
import 'package:mobile_dev_test_task/features/authorization/presentation/authorization_widget.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthorizationCubit>(
      create: (context) {
        return AuthorizationCubit(
          authorizationProvider: AuthorizationProvider(BaseNetwork(Dio())),
        );
      },
      child: const AuthorizationWidget(),
    );
  }
}
