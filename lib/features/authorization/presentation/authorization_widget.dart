import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_dev_test_task/core/form_ui/widgets/custom_app_bar.dart';
import 'package:mobile_dev_test_task/core/form_ui/widgets/custom_snack_bar.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_cubit.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_state.dart';
import 'package:mobile_dev_test_task/features/authorization/presentation/widgets/authorization_body.dart';

class AuthorizationWidget extends StatefulWidget {
  const AuthorizationWidget({super.key});

  @override
  State<AuthorizationWidget> createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  final _formKey = GlobalKey<FormState>();
  bool _submit = false;

  void _checkFieldEmptiness() {
    setState(() {
      _submit = _nameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _messageController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();

    _nameController.addListener(_checkFieldEmptiness);
    _emailController = TextEditingController();
    _emailController.addListener(_checkFieldEmptiness);
    _messageController = TextEditingController();
    _messageController.addListener(_checkFieldEmptiness);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Contact us'),
      body: BlocConsumer<AuthorizationCubit, AuthorizationState>(
        listener: (context, state) {
          if (state == const AuthorizationState.error()) {
            CustomSnackBar(
              message: 'Error',
              color: Colors.red,
            ).show(context);
          }
          if (state == const AuthorizationState.loaded()) {
            CustomSnackBar(
              message: 'Success',
              color: Colors.green,
            ).show(context);
          }
        },
        builder: (context, state) {
          return AuthorizationBody(
            nameController: _nameController,
            emailController: _emailController,
            messageController: _messageController,
            formKey: _formKey,
            submit: _submit,
          );
        },
      ),
    );
  }
}
