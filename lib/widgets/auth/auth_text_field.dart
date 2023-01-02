import 'package:flutter/material.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final void Function(String value)? onChanged;
  final String hint;
  final TextInputType inputType;

  const AuthTextField({
    Key? key,
    this.onChanged,
    required this.hint,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        fillColor: AppColors.white,
        filled: true,
        hintText: hint,
      ),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 1,
      onChanged: onChanged,
    );
  }
}
