import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Music3(),
    ),
  );
}
class Music3 extends StatelessWidget {
  const Music3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 2, 8),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.pink[200],),
            ),
            Positioned(
              top: 20,
              right: 120,
              child: Text("Now Playing", style: TextStyle(
                color: Colors.pink[200],
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
            Positioned(
              top: 70,
              left: 65,
              child: Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/m1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 300,
              left: 150,
              child: Column(
                children: [
                  Text("Flowers", style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Miley Cyrus", style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
            Positioned(
              bottom: 245,
              left: 20,
              child: Container(
                width: 345,
                child: Divider(
                  thickness: 5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 19,
              bottom: 245,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.pink[200],
              ),
            ),
            Positioned(
              bottom: 210,
              left: 19,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("00.03", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                  SizedBox(width: 260,),
                  Text("03:21", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                ],
              ),
            ),
            Positioned(
              left: 19,
              bottom: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.vertical_align_bottom, color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(FontAwesomeIcons.volumeXmark, color: Colors.white,),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Icon(FontAwesomeIcons.shuffle, color: Colors.white,),
                  SizedBox(width: 20,),
                  Icon(FontAwesomeIcons.backwardStep, color: Colors.white, size: 35,),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink[200],
                    child: Icon(Icons.pause, size: 30,),
                  ),
                  SizedBox(width: 10,),
                  Icon(FontAwesomeIcons.forwardStep, color: Colors.white, size: 35,),
                  SizedBox(width: 20,),
                  Icon(FontAwesomeIcons.repeat, color: Colors.white,),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Icon(Icons.star_border_outlined, color: Colors.white,),
                      SizedBox(height: 20,),
                      Icon(FontAwesomeIcons.music, color: Colors.white, size: 20,),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 150,
              child: Row(
                children: [
                  Text("Playlist", style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 15,
                  ),),
                  SizedBox(width: 10,),
                  Text("|", style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 15,
                  ),),
                  SizedBox(width: 10,),
                  Text("Lyrics", style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 15,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}