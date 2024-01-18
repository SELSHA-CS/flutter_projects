import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(
    MaterialApp(
      home: ClipperEx(),
    ),
  );
}

class ClipperEx extends StatelessWidget {
  //const ClipperEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: .8,
              heightFactor: .7,
              child: Image.asset("assets/images/india.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/images/bbgg.jpg"),
            ),
          ),
          ClipOval(
            child: Image.asset("assets/images/india1.jpg"),
          ),
          ClipPath(
            clipper: MessageClipper(),
            child: Container(
              height: 200,
              color: Colors.teal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              clipper: MovieTicketClipper(),
              child: Container(
                height: 200,
                color: Colors.purple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              clipper: MovieTicketBothSidesClipper(),
              child: Container(
                height: 200,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          ClipPath(
            clipper: StarClipper(8),
            child: Container(
              height: 500,
              color: Colors.red,
            ),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}