import 'package:flutter/material.dart';
import 'package:test_one/const/app_color.dart';
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
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.primary_color,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text('Messages'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text('My AppBar'),
            leading: Container(child: const Text('')),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.more_vert));
              }),
            ],
            bottom: const TabBar(tabs: [
              Tab(text: 'tab1'),
              Tab(text: 'tab2'),
              Tab(text: 'tab3')
            ]),
          ),
          body: const TabBarView(children: [TabOne(), TabTwo(), TabThree()]),
        ),
      ),
    );
  }
}
