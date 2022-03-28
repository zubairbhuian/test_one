import 'package:flutter/material.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({ Key? key }) : super(key: key);

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is tab2',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}