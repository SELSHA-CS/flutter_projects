import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView3(),
    )
  );
}

class GridView3 extends StatelessWidget {
  const GridView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView - Builder"),
      ),
      body: GridView.builder(
        itemCount: 20,
          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120),
          itemBuilder: (context, index) => Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.fill,
              )
            ),
          )
      ),
    );
  }
}
