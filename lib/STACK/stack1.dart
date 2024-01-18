import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: StackEx(),
    ),
  );
}

class StackEx extends StatelessWidget {
  //const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            height: 350,
            width: 350,
            color: Colors.red,
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 120,
              width: 120,
              color: Colors.green,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}