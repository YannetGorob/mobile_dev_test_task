import 'package:flutter/cupertino.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    required this.title,
    this.enabled = true,
    this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback? onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: CupertinoButton(
        onPressed: enabled ? onPressed : null,
        color: const Color(0xFF976d8d),
        borderRadius: BorderRadius.circular(25),
        child: Center(child: Text(title)),
      ),
    );
  }
}
