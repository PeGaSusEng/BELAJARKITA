import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/services/theme.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          // ignore: sort_child_properties_last
          child: const Text('Open'),
          color: orangeColor,
        ),
      ),
    );
  }
}
