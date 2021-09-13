import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/sign-in', (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor1,
      body: Center(
        child: Image.asset(
          'assets/image_splash.png',
          width: 130,
          height: 150,
        ),
      ),
    );
  }
}
