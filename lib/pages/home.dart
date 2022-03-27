import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('hi'),
          bottom: const TabBar(
              tabs: [Tab(text: 'tab1'), Tab(text: 'tab2'), Tab(text: 'tab3')]),
        ),
        body: const TabBarView(children: [Text("1"), Text("2"), Text("3")]),
      ),
    );
  }
}
