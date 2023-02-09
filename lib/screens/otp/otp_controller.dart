import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class OTPController extends GetMaterialController {
  final textController = TextEditingController();
  final focusNode = FocusNode();

  final isLoading = false.obs;
  final loginId = ''.obs;

  @override
  void onReady() {
    loginId.value = Get.parameters['email'] ?? '-';
    focusNode.requestFocus();
  }

  void performCheck(String code) async {
    isLoading.value = true;
    if (code == '669771') {
      _otpCheckSuccess();
      isLoading.value = false;
    } else {
      _otpCheckError();
      isLoading.value = false;
    }
  }

  void _otpCheckSuccess() {
    Get.offAllNamed('/home');
  }

  void _otpCheckError() {
    Get.snackbar(
      "Kode OTP Salah!",
      "Pastikan anda memasukan kode yang sesuai.",
      colorText: AppColors.black,
      backgroundColor: AppColors.lightRed,
    );
    textController.text = '';
    focusNode.requestFocus();
  }
}
