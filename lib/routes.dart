import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/screens/register/register_controller.dart';
import 'package:steady_academy_mobile_revision/screens/register/register_screen.dart';

import 'screens/gateway/gateway_controller.dart';
import 'screens/gateway/gateway_screen.dart';
import 'screens/intro/intro_controller.dart';
import 'screens/intro/intro_screen.dart';
import 'screens/login/login_controller.dart';
import 'screens/login/login_screen.dart';

List<GetPage<dynamic>> get routes => [
      GetPage(
        name: '/',
        page: () => const GatewayScreen(),
        binding: BindingsBuilder.put(() => GatewayController()),
      ),
      GetPage(
        name: '/intro',
        page: () => const IntroScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => IntroController());
        }),
      ),
      GetPage(
        name: '/register',
        page: () => const RegisterScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => RegisterController());
        }),
      ),
      GetPage(
        name: '/login',
        page: () => const LoginScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => LoginController());
        }),
      ),
    ];
