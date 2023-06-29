import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_dev_test_task/core/form_ui/widgets/custom_primary_button.dart';
import 'package:mobile_dev_test_task/core/form_ui/widgets/custom_text_field.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_cubit.dart';
import 'package:mobile_dev_test_task/features/authorization/domain/authorization_state.dart';

part 'form_with_icon.dart';

class AuthorizationBody extends StatelessWidget {
  const AuthorizationBody({
    required this.nameController,
    required this.emailController,
    required this.messageController,
    required this.formKey,
    required this.submit,
    super.key,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey;
  final bool submit;

  @override
  Widget build(BuildContext context) {
    final authorizationCubit = context.read<AuthorizationCubit>();
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FormWithIcon(
              hintText: 'Name',
              controller: nameController,
              validator: authorizationCubit.validateInputValue,
            ),
            FormWithIcon(
              hintText: 'Email',
              controller: emailController,
              validator: authorizationCubit.validateEmail,
            ),
            FormWithIcon(
              hintText: 'Message',
              controller: messageController,
              validator: authorizationCubit.validateInputValue,
            ),
            const SizedBox(height: 50),
            if (authorizationCubit.state == const AuthorizationState.loading())
              const Text(
                'please wait...',
                style: TextStyle(fontSize: 20),
              )
            else
              CustomPrimaryButton(
                title: 'Send',
                onPressed: formKey.currentState != null &&
                        submit &&
                        formKey.currentState!.validate()
                    ? () {
                        authorizationCubit.sendData(
                          name: nameController.text,
                          email: emailController.text,
                          message: messageController.text,
                        );
                      }
                    : null,
              ),
          ],
        ),
      ),
    );
  }
}
