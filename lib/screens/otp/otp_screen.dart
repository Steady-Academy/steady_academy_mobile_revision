import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_container.dart';

import 'otp_controller.dart';
import 'otp_field.dart';
import 'otp_footer.dart';
import 'otp_header.dart';

class OTPScreen extends GetView<OTPController> {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      content: Column(children: const [
        OTPHeader(),
        OTPField(),
        SizedBox(height: 44),
        OTPFooter(),
      ]),
      title: "Verifikasi Akun",
    );
  }
}
