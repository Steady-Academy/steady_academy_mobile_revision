import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

import 'otp_controller.dart';

class OTPField extends GetView<OTPController> {
  const OTPField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const length = 6;
    const borderColor = Color.fromRGBO(114, 178, 238, 1);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    const textColor = Color.fromRGBO(30, 60, 87, 1);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(fontSize: 22, color: textColor),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.black),
      ),
    );
    return Center(
      child: SizedBox(
        height: 68,
        child: Pinput(
          length: length,
          controller: controller.textController,
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) => controller.performCheck(pin),
          focusedPinTheme: defaultPinTheme.copyWith(
            height: 68,
            width: 64,
            decoration: defaultPinTheme.decoration!.copyWith(
              border: Border.all(color: AppColors.primary),
            ),
          ),
          errorPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: errorColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
