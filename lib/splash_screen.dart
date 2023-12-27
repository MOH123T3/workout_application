import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:gym_project/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.cyan,
            image: DecorationImage(
                image: AssetImage(
              'assets/splash.png',
            ))),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 5, right: 5),
          child: Align(
              alignment: Alignment.bottomRight,
              child: Text('Developed by Mohit')),
        ),
      ),
    );
  }
}
