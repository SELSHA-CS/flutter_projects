import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/listview2.dart';
import 'package:flutter_projects/REFACTOR_WIDGETS/myWidgets.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView4(),
    )
  );
}

class GridView4 extends StatelessWidget {
  //const GridView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView - Builder fixedcrossaxiscount"),
      ),
      body: GridView.builder(
        itemCount: 20,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) => MyWidget(
            label: const Text("hello"), 
            onpressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListView2()));
            },
            bgcolor: Colors.red,
            image: Image.asset("assets/images/1.jpg"),
            ),
          // Container(
          //   height: 50,
          //   width: 50,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/images/1.jpg"),
          //         fit: BoxFit.fill,),
          //   ),
          // ),
        ),
    );
  }
}
