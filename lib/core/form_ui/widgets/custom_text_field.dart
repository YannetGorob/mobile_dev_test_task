import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.onChanged,
    this.controller,
    this.textInputType,
    this.textInputAction,
    this.label,
    this.hintText,
    this.validator,
    this.obscureText = false,
    super.key,
  });

  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final String? label;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: textInputType,
      enableSuggestions: false,
      textInputAction: textInputAction,
      enableIMEPersonalizedLearning: false,
      autocorrect: false,
      enableInteractiveSelection: false,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        label: label == null ? null : Text(label!),
        hintText: hintText == null ? null : hintText!,
      ),
    );
  }
}
