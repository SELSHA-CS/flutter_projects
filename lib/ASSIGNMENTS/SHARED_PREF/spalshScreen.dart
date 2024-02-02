import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/introScreen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => IntroScreen())
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2053),
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/sharedpref_images/img2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}