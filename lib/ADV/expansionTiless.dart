import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: ExpansionTileEx(),
    ),
  );
}

class ExpansionTileEx extends StatelessWidget {
  //const ExpansionTileEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            backgroundColor: Colors.blue,
            title: Text("Tile 1"),
            subtitle: Text("Colorrs"),
            children: List.generate(3, (index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            )),
          ),
          ExpansionTile(
            backgroundColor: Colors.pink,
            title: Text("Tile 2"),
            subtitle: Text("Colorrs"),
            children: List.generate(3, (index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            )),
          ),
          ExpansionTile(
            title: Text("Tile 3"),
            subtitle: Text("Colorrs"),
            children: List.generate(3, (index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            )),
          ),
        ],
      ),
    );
  }
}