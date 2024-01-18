import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverEx(),
    ),
  );
}

class SliverEx extends StatelessWidget {
  //const SliverEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [  
          SliverAppBar(
            pinned: true, //if you dont want the appbar to move up
            //floating: true,//
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/india.jpg",
                //fit: BoxFit.cover,
              ),
            ),
            elevation: 5,
            title: Text("Sliver Example"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) => Card(
              child: Center(child: Text("hi")),
              color: Colors.pink,
            ))
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) => Container(
                color: Colors.green,
              )
            ), 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }
}