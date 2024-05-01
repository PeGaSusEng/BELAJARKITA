import 'package:flutter/material.dart';
import 'package:untitled/Screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BelajarKita',
      theme: ThemeData(
        primaryColor: Colors.black87,
        textTheme: const TextTheme(),
        appBarTheme: const AppBarTheme(
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          titleTextStyle: TextStyle(color: Colors.white),
          toolbarHeight: 200.0,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      //home: const Home(),
    );
  }
}
