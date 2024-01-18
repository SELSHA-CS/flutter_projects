import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(
    MaterialApp(
      home: LottieEx(),
    ),
  );
}

class LottieEx extends StatelessWidget {
  //const LottieEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: Center(
        child: Lottie.asset("assets/animations/anime1.json"),
        //child: Lottie.network("https://lottie.host/a05f82e7-e82c-46ba-a6d5-0915f3254300/KgB7y7kMm3.json"),
      ),
    );
  }
}