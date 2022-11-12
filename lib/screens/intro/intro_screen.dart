import 'package:flutter/material.dart';

import 'intro_header.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IntroHeader(),
          ],
        ),
      ),
    );
  }
}
