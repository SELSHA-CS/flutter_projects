import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: FirstProgram(),
    )
  );
}

class FirstProgram extends StatelessWidget {
  const FirstProgram({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My First Program",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage("assets/icons/p1.png"),
              height: 250,
              width: 250,
            ),
            Image.asset(
              "assets/icons/p2.png",
              height: 150,
              width: 150,
            ),
            const Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Circle-icons-art.svg/2048px-Circle-icons-art.svg.png"),
            height: 150,
            width: 150,),
            const Text("MY APPLICATION"),
          ],
        ),
      ),
    );
  }
}