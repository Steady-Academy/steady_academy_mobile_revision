import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/app_theme.dart';
import 'routes.dart';

class SteadyAcademy extends StatelessWidget {
  const SteadyAcademy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Steady Academy',
      initialRoute: '/',
      getPages: routes,
      themeMode: ThemeMode.light,
      theme: appTheme,
      darkTheme: appTheme,
    );
  }
}
