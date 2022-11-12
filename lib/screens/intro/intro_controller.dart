import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroController extends GetMaterialController {
  final slides = ['intro_slide_1', 'intro_slide_2', 'intro_slide_3'];
  final pageController = PageController(viewportFraction: 1);

  void navigateToLogin() {
    Get.toNamed('/login');
  }

  void navigateToRegister() {
    Get.toNamed('/register');
  }
}
