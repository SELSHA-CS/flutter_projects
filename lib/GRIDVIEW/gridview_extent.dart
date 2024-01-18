import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView6(),
    )
  );
}

class GridView6 extends StatelessWidget {
  //const GridView6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView - Extent"),
      ),
      body: GridView.extent(
          maxCrossAxisExtent: 120,
      children: List.generate(20, (index) => Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/2.jpg"),
          fit: BoxFit.fill,
          ),
        ),
      )),),
    );
  }
}
