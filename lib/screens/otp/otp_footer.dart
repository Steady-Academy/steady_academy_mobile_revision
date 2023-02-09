import 'package:flutter/material.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class OTPFooter extends StatelessWidget {
  const OTPFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Belum mendapatkan code?',
        ),
        TextButton(
          onPressed: () => {},
          child: const Text(
            'Kirim ulang',
            style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
