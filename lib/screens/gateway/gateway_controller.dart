import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class GatewayController extends GetMaterialController {
  @override
  Future<void> onReady() async {
    await Future.delayed(const Duration(milliseconds: 10));
    FlutterNativeSplash.remove();
    Get.offNamed('/intro');
  }
}
