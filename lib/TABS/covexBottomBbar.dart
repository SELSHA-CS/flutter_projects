import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/GRIDVIEW/gridviewmaxcrossax.dart';
import 'package:flutter_projects/LISTVIEW/listview_generate.dart';


void main(){
  runApp(
    MaterialApp(
      home: CovexEx(),
    ),
  );
}

class CovexEx extends StatefulWidget {
  //const CovexEx({super.key});

  @override
  State<CovexEx> createState() => _CovexExState();
}

class _CovexExState extends State<CovexEx> {

var index = 2;
var screens = [
    GridView2(),
    ListView2(),
    GridView2(),
    ListView2(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.purpleAccent,
        activeColor: Colors.pink,
        shadowColor: Colors.green,
        items: [
        TabItem(icon: Icons.home),
        TabItem(icon: Icons.favorite),
        TabItem(icon: Icons.person),
        TabItem(icon: Icons.settings),
      ],
      onTap: (tapIndex){
        setState(() {
          index = tapIndex;
        });
      },),
      body: screens[index],
    );
  }
}