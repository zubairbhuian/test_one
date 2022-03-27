
import 'package:flutter/material.dart';
import 'package:test_one/pages/splash_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primarySwatch:Colors.purple) ,
      home:const SplashScreen() ,
    );
  }
}