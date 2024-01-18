import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(
    MaterialApp(
      home: Staggr_Grid(),
    )
  );
}
class Staggr_Grid extends StatelessWidget {
  //const Staggr_Grid({super.key});

  var ccount = [2,2,2,2,2,2];
  var mcount = [3,2,3,1,3,2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) => StaggeredGridTile.count(
            crossAxisCellCount: ccount[index], 
            mainAxisCellCount: mcount[index], 
            child: Card(
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Image.asset("assets/farmers_images/pexels-lisa-fotios-718143.jpg")),
                    Text("LOGIN",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
          )),
          //[
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 2, 
          //     mainAxisCellCount: 1, 
          //     child: Card(
          //       color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //       child: Column(
          //         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Expanded(child: Image.asset("assets/farmers_images/pexels-lisa-fotios-718143.jpg")),
          //           Text("LOGIN GIRL",
          //           style: TextStyle(
          //             fontSize: 28,
          //             fontWeight: FontWeight.bold,
          //           ),)
          //         ],
          //       ),
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1, 
          //     mainAxisCellCount: 3, 
          //     child: Card(
          //       color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //       child: Column(
          //         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Expanded(child: Image.asset("assets/farmers_images/pexels-lisa-fotios-718143.jpg")),
          //           Text("LOGIN GIRL",
          //           style: TextStyle(
          //             fontSize: 28,
          //             fontWeight: FontWeight.bold,
          //           ),)
          //         ],
          //       ),
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1, 
          //     mainAxisCellCount: 4, 
          //     child: Card(
          //       color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //       child: Column(
          //         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Expanded(child: Image.asset("assets/farmers_images/pexels-lisa-fotios-718143.jpg")),
          //           Text("LOGIN GIRL",
          //           style: TextStyle(
          //             fontSize: 28,
          //             fontWeight: FontWeight.bold,
          //           ),)
          //         ],
          //       ),
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}