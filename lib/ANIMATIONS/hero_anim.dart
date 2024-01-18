import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Hero_Anim(),
    ),
  );
}
class Hero_Anim extends StatelessWidget {
  const Hero_Anim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Hero Main Page"),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Hero_Detail()));
        },
        child: Hero(
          tag: "imagineHero",
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.purpleAccent,
            ),
            child: Icon(
              Icons.widgets_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class Hero_Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Hero Details Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Hero_Anim()));
          },
          child: Hero(
            tag: "imagineHero", 
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow,
              ),
              child: Icon(
                Icons.filter_vintage_outlined,
                size: 100,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}