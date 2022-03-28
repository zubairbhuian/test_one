import 'package:flutter/material.dart';

class TabOne extends StatefulWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 250,
          color: const Color.fromARGB(255, 179, 126, 240),
          child: const Center(
              child: Text(
            "This is some demo text",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )),
        ),
        Container(
          color: const Color.fromARGB(255, 179, 126, 240),
          child: Column(children: [
            Row(
              children: const [],
            )
          ]),
        ),
      ],
    );
  }
}
