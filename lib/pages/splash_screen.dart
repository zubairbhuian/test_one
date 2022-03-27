import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber[300],
          body: const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 5,
              semanticsLabel: 'Linear progress indicator',
            ),
          )),
    );
  }
}
