import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView5(),
    )
  );
}

class GridView5 extends StatelessWidget {
  //const GridView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView - Count"),
      ),
      body: GridView.count(
          crossAxisCount: 4,
        children: List.generate(10, (index) => Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/2.jpg"),
            fit: BoxFit.fill,),
          ),
        )),
      ),
    );
  }
}
