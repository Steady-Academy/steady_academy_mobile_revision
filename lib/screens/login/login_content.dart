import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/screens/login/login_controller.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_header.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_text_field.dart';
import 'package:steady_academy_mobile_revision/widgets/default_button.dart';

class LoginContent extends GetView<LoginController> {
  const LoginContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthHeader(
          title: "Yay, kamu kembali!",
          description:
              "Lanjutkan belajarmu di Steady Academy untuk mencapai tujuanmu.",
          image: "login_image",
        ),
        Expanded(
          child: Column(
            children: [
              const AuthTextField(
                obscureText: false,
                hint: "Masukkan email",
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const AuthTextField(
                obscureText: true,
                hint: "Masukkan password",
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 46,
                child: DefaultButton(
                  roundedSize: 50,
                  isLoading: controller.isLoading,
                  isEnabled: controller.canLogin,
                  onPressed: () => {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
