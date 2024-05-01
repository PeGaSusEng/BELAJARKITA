import 'package:flutter/material.dart';
import 'dart:io';

class Exit extends StatelessWidget {
  const Exit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              const Text(
                'Terimakasih Sudah Berkunjung, Tetap Semangat !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.0, fontFamily: 'Times New Roman',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text('Exit'),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
