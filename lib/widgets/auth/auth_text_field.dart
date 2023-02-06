import 'package:flutter/material.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final void Function(String value)? onChanged;
  final String hint;
  final TextInputType inputType;
  final bool obscureText;

  const AuthTextField(
      {Key? key,
      this.onChanged,
      required this.hint,
      required this.inputType,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        fillColor: AppColors.white,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0),
        ),
        label: Text(hint),
        labelStyle: const TextStyle(fontSize: 16),
      ),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 1,
      onChanged: onChanged,
    );
  }
}
