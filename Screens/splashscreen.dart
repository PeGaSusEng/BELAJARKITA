import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 6)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Home()),
            (route) => false,
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/LogoApps/logo.png',
                width: 400,
                height: 400,
              ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(
                color: Colors.yellow,
                strokeWidth: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
