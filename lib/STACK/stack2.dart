import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: StckEx2(),
    ),
  );
}

class StckEx2 extends StatelessWidget {
  //const StckEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFja2dyb3VuZCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Text(
                "Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Text(
                "Designation",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 38,
              right: 70,
              child: Wrap(
                children: [
                  Icon(Icons.phone, color: Colors.white,),
                  Text(
                  "Phone no",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 100,
              child: Wrap(
                children: [
                  Icon(Icons.email, color: Colors.white,),
                  Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}