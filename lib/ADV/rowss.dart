import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Row1(),
      )
  );
}

class Row1 extends StatelessWidget {
  //const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowS"),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Image.asset("assets/icons/p2.png"),
            Image.asset("assets/icons/p2.png"),
            Image.asset("assets/icons/p2.png"),
            Image.asset("assets/icons/p2.png"),
            Image.asset("assets/icons/p2.png"),
            Image.asset("assets/icons/p2.png")
          ],
        ),
      ),
    );
  }
}
