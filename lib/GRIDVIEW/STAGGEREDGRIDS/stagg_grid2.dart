import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaggeredGridView2(),
    ),
  );
}

class StaggeredGridView2 extends StatelessWidget {
  //const StaggeredGridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered GriView - Extend"),
      ),
      body: StaggeredGrid.extent(
          maxCrossAxisExtent: 100,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.red,
              ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
