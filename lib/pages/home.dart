import 'package:flutter/material.dart';
import 'package:test_one/widgets/home_tab_one.dart';
import 'package:test_one/widgets/home_tab_three.dart';
import 'package:test_one/widgets/home_tab_two.dart';

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
          title: const Text('My AppBar'),
          bottom: const TabBar(
              tabs: [Tab(text: 'tab1'), Tab(text: 'tab2'), Tab(text: 'tab3')]),
        ),
        body: const TabBarView(children: [TabOne(), TabTwo(), TabThree()]),
      ),
    );
  }
}
