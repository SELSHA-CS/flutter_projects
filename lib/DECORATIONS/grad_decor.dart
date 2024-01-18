import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GradientDec(),
    )
  );
}

class GradientDec extends StatelessWidget {
  //const GradientDec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRADIENT DECORATION"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellow,
            Colors.orange,
            Colors.pink,
            Colors.purple,
            Colors.blue,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          ),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image.asset(
        //       "assets/icons/p5.png",
        //       height: 150,
        //       width: 150,
        //     ),
        //     Text(
        //       "MY APPLICATION",
        //       style: TextStyle(
        //         fontSize: 30,
        //         fontStyle: FontStyle.italic,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}