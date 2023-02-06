import 'package:flutter/material.dart';
import 'package:steady_academy_mobile_revision/screens/login/login_content.dart';
import 'package:steady_academy_mobile_revision/widgets/auth/auth_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthContainer(content: LoginContent(), title: 'Login');
  }
}
