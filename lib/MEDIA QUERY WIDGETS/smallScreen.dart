import 'dart:math';
import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Large Screen"),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.greenAccent,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.pink,
                    child: ListTile(
                      title: Text("video $index"),
                    ),
                  ),
                );
            })
          )
          ),
        ],
      ),
    );
  }
}