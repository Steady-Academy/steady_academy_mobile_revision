import 'package:get/get.dart';

class RegisterController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;
  final phone = ''.obs;

  final isLoading = false.obs;
  final canRegister = false.obs;
}
