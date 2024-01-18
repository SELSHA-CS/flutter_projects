import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Sample(),
      )
  );
}

class Sample extends StatelessWidget {
  //const Sample({super.key});

  var months = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALENDAR"),
        backgroundColor: Colors.tealAccent,
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => Card(
            child: Text(months[index]),
          )),
          separatorBuilder: (context, index){
            if(index % 4 == 0){
              return Card(
                //color: Colors.red,
                color: Colors.red,
                child: Text("Advertisement"),
              );
            }
            return SizedBox(height: 10,);
          },
          itemCount: months.length),
    );
  }
}
