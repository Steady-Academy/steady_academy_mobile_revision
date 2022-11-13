import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/config/app_colors.dart';
import 'package:steady_academy_mobile_revision/screens/intro/intro_controller.dart';
import 'package:steady_academy_mobile_revision/widgets/default_button.dart';

class IntroFooter extends GetView<IntroController> {
  const IntroFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 46,
            child: DefaultButton(
              child: const Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              color: AppColors.secondary,
              onPressed: () => controller.navigateToLogin(),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 46,
            child: DefaultButton(
              child: const Text(
                "Daftar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              onPressed: () => controller.navigateToRegister(),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Didukung Oleh SMKN 1 Katapang",
            style: TextStyle(color: AppColors.darkGrey, fontSize: 10),
          )
        ],
      ),
    );
  }
}
