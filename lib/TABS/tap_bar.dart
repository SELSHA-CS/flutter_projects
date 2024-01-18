import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/GRIDVIEW/gridview_builders.dart';
import 'package:flutter_projects/LISTVIEW/listview_generate.dart';


void main(){
  runApp(
    MaterialApp(
      home: TabbarEx(),
    ),
  );
}

class TabbarEx extends StatelessWidget {
  //const TabbarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.group),
              ),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Updates"),
              ),
              Tab(
                child: Text("Call"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("hi"),
            ListView2(),
            //ListView1(),
            Icon(Icons.favorite),
            GridView3(),
          ],
        ),
      ),
      );
  }
}