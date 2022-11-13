import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/screens/intro/intro_carousel.dart';

import 'intro_controller.dart';
import 'intro_footer.dart';
import 'intro_header.dart';

class IntroScreen extends GetView<IntroController> {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            IntroHeader(),
            SizedBox(height: 10),
            Expanded(child: IntroCarousel()),
            IntroFooter(),
          ],
        ),
      ),
    );
  }
}
