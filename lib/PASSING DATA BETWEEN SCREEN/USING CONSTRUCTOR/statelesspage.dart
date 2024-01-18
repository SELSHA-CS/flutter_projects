import 'package:flutter/material.dart';

class Screen_Stateless extends StatelessWidget {

  String? name;
  int? pswd;
  Screen_Stateless({super.key, this.name, this.pswd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("welcome to $name and your passwrod is $pswd", style: TextStyle(fontSize: 20),),
      ),
    );
  }
}