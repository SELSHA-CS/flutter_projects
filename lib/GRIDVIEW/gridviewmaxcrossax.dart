import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView2(),
    )
  );
}

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View - maxCrossAxis"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: .2),
        children: List.generate(10, (index) => Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.fill)
          ),
        )),
      ),
    );
  }
}
