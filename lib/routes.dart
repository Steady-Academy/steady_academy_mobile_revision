import 'package:get/get.dart';

import 'screens/gateway/gateway_controller.dart';
import 'screens/gateway/gateway_screen.dart';
import 'screens/intro/intro_controller.dart';
import 'screens/intro/intro_screen.dart';

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
    ];
