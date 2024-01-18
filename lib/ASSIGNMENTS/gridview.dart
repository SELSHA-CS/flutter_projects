import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridViewss(),
    ),
  );
}

class GridViewss extends StatelessWidget {
  //const GridViewss({super.key});

  var iconss = [
    Icons.home,
    Icons.notification_important,
    Icons.linked_camera,
    Icons.book,
    Icons.leak_remove,
    Icons.local_activity,
    Icons.phone,
    Icons.mail,
    Icons.mic_off,
    Icons.note_add,
    Icons.ac_unit,
    Icons.add_chart,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: iconss.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            mainAxisExtent: 120,
          ), 
          itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconss[index], size: 55,),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Heart",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Shaker",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ))
        ),
      ),
    );
  }
}