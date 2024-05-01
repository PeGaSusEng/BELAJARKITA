// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:untitled/pages/exit.dart';
import 'package:untitled/pages/history.dart';
import 'package:untitled/pages/people.dart';
import 'package:untitled/pages/profile.dart';
import 'package:untitled/pages/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = [
    Image.asset('assets/BottomBar/TPS.png', width: 60, height: 60),
    Image.asset('assets/BottomBar/Sains.png', width: 60, height: 60),
    Image.asset('assets/BottomBar/Soshum.png', width: 60, height: 60),
    Image.asset('assets/BottomBar/info.png', width: 60, height: 60),
    Image.asset('assets/BottomBar/Keluar.png', width: 60, height: 60),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.lightBlueAccent,
              title: Image.asset(
                'assets/LogoApps/logo.png',
                fit: BoxFit.contain,
                height: 360,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: getSelectedWidget(index: index),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const People();
        break;
      case 1:
        widget = const Profile();
        break;
      case 2:
        widget = const Search();
        break;
      case 3:
        widget = const History();
        break;
      case 4:
        widget = const Exit();
        break;
      default:
        widget = const Exit();
        break;
    }
    return widget;
  }
}
