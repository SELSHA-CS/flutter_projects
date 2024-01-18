import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: ContainerDec(),
    )
  );
}

class ContainerDec extends StatelessWidget {
  //const ContainerDe//c({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CONTAINER DECORATION",
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            image: const DecorationImage(
              image: AssetImage("assets/icons/p2.png"),
              fit: BoxFit.contain,
            )
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.white24,
            size: 100,
          ),
        ),
      ),
    );
  }
}