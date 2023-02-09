import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class RegisterController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  final confirm_password = ''.obs;
  final Map<String, String> params = {};

  final isLoading = false.obs;
  final canRegister = false.obs;

  @override
  void onReady() {
    CombineLatestStream.list([
      name.stream,
      email.stream,
      password.stream,
      confirm_password.stream
    ])
        .map((event) => event.map((e) => e.isNotEmpty).contains(false))
        .map((event) => !event)
        .listen((event) => canRegister.value = event);
  }

  void performRegister() async {
    isLoading.value = true;
    if (password.value == confirm_password.value) {
      params['email'] = email.value;
      Get.offNamed('/otp', parameters: params);
      isLoading.value = false;
    } else {
      Get.snackbar(
        "Password tidak cocok!",
        "Pastikan anda memasukan password yang sesuai.",
        colorText: AppColors.black,
        backgroundColor: AppColors.lightRed,
      );
      isLoading.value = false;
    }
  }
}
