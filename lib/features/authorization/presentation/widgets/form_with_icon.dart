part of 'authorization_body.dart';

class FormWithIcon extends StatelessWidget {
  const FormWithIcon({
    required this.hintText,
    required this.controller,
    required this.validator,
    this.height,
    super.key,
  });

  final String hintText;
  final double? height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: height),
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFfff5e9),
                ),
                child: const Icon(
                  Icons.lock_open_rounded,
                  color: Color(0xFFe5bd90),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: CustomTextField(
                  validator: validator,
                  controller: controller,
                  hintText: hintText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
