import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/screens/intro/intro_controller.dart';

class IntroHeader extends GetView<IntroController> {
  const IntroHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset('assets/images/logo_steady_academy.svg'),
          )
        ],
      ),
    );
  }
}
