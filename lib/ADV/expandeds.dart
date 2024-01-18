import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(
    MaterialApp(
      home: Expanded1(),
    ),
  );
}

class Expanded1 extends StatelessWidget {
  //const Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        bottom: AppBar(
          title: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.pinkAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.deepPurple[200],
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.pinkAccent[200],
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.facebook, color: Colors.pinkAccent,),
                  FaIcon(FontAwesomeIcons.twitter, color: Colors.blue,),
                  FaIcon(FontAwesomeIcons.instagram, color: Colors.green,),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(10, (index) => Card(
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(
                  child: Text(
                    "hi",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
