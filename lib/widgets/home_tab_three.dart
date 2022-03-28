import 'package:flutter/material.dart';

class TabThree extends StatefulWidget {
  const TabThree({Key? key}) : super(key: key);

  @override
  State<TabThree> createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is tab3',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
