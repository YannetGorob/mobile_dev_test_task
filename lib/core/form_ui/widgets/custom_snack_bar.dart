import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    required this.message,
    required this.color,
    super.key,
    super.duration = const Duration(seconds: 3),
  }) : super(content: Text(message));

  final String message;
  final Color color;

  void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: content,
        duration: duration,
      ),
    );
  }
}
