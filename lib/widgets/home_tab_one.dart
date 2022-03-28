import 'package:flutter/material.dart';

class TabOne extends StatefulWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is tab1',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
