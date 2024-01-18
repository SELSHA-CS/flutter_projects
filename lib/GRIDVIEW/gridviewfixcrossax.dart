import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView1(),
    )
  );
}

class GridView1 extends StatelessWidget {
  //const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View - FixedcrossAxis"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
        children: List.generate(10, (index) => Container(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //color: Colors.primaries[index%Colors.primaries.length],
          //color: Colors.red,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/images/1.jpg"),
          //   fit: BoxFit.fill,)
          // ),
        )),
      ),
    );
  }
}
