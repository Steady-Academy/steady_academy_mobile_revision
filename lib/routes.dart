import 'package:get/get.dart';

import 'screens/intro/intro_screen.dart';

List<GetPage<dynamic>> get routes => [
      GetPage(
        name: '/',
        page: () => const IntroScreen(),
        binding: BindingsBuilder(() {}),
      ),
    ];
