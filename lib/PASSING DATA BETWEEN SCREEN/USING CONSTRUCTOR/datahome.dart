import 'package:flutter/material.dart';
import 'package:flutter_projects/PASSING%20DATA%20BETWEEN%20SCREEN/USING%20CONSTRUCTOR/statefullpage.dart';
import 'package:flutter_projects/PASSING%20DATA%20BETWEEN%20SCREEN/USING%20CONSTRUCTOR/statelesspage.dart';


void main(){
  runApp(MaterialApp(
    home: DataHome(),
  ));
}

class DataHome extends StatelessWidget {
  
 String name = "Luminar";
 int pswd = 123;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Screen_Stateless(name : name, pswd : pswd)));
            }, 
            child: Text("to stateless")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Screen_Stateful(name : name, location : "kochi")));
            }, 
            child: Text("to statefull")),

          ],
        ),
      ),
    );
  }
}