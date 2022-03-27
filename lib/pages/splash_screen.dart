import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_one/const/app_color.dart';
import 'package:test_one/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.primary_light_color,
          body: Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 5,
              semanticsLabel: 'Linear progress indicator',
            ),
          )),
    );
  }
}
