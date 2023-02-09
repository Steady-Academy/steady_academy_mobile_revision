import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/screens/register/register_controller.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_header.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_text_field.dart';
import 'package:steady_academy_mobile_revision/widgets/default_button.dart';

class RegisterContent extends GetView<RegisterController> {
  const RegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthHeader(
          title: "Yuk, daftar di Steady Academy",
          description:
              "Akses ratusan video belajar, quiz dan beragam fitur menarik lainnya sekarang.",
          image: "register_image",
        ),
        Expanded(
          child: Column(
            children: [
              AuthTextField(
                obscureText: false,
                hint: "Masukan nama lengkap",
                onChanged: (val) => controller.name.value = val,
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              AuthTextField(
                obscureText: false,
                hint: "Masukkan email",
                onChanged: (val) => controller.email.value = val,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              AuthTextField(
                obscureText: true,
                hint: "Masukkan password",
                onChanged: (val) => controller.password.value = val,
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              AuthTextField(
                obscureText: true,
                hint: "Masukkan ulang password",
                onChanged: (val) => controller.confirm_password.value = val,
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 46,
                child: DefaultButton(
                  roundedSize: 50,
                  isLoading: controller.isLoading,
                  isEnabled: controller.canRegister,
                  onPressed: () => controller.performRegister(),
                  child: Text(
                    'Register'.tr,
                    style: const TextStyle(
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
