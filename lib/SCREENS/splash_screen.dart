import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_projects/SCREENS/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    )
  );
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login())
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //color: Colors.pink[200],
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/b1.png",
              ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "assets/icons/p6.png",
                height: 70,
                width: 70,
              ),
              Text(
                  "Pinterest",
                style: GoogleFonts.ropaSans(
                  color: Colors.black87,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
