import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: ListView3(),
    )
  );
}

class ListView3 extends StatelessWidget {
  //const ListView3({super.key});

  var name = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context,index){
            return Card(
              child: Text(name[index]),
            );
          }
      )
    );
  }
}
