// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:trauxit_mid_level_flutter_test/presentation/sharedWidgets/widgets/customeAppBar.dart';

import 'widgets/homeWidget.dart';
import 'widgets/profileWidget.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: customeAppBar(
          "Flutter Mid-Level Task App",
          bottomTabs: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person_pin), text: "Profile")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeWidget(),
            ProfileWidget(),
          ],
        ),
      ),
    );
  }
}
