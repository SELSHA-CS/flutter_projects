import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Switch_Radio(),
    ),
  );
}

class Switch_Radio extends StatefulWidget {
  const Switch_Radio({super.key});

  @override
  State<Switch_Radio> createState() => _Switch_RadioState();
}

class _Switch_RadioState extends State<Switch_Radio> {

  bool result = false;

  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Radio"),
      ),
      body: Column(
        children: [
          Switch(
            inactiveThumbColor: Colors.purple,
            inactiveTrackColor: Colors.red,
            activeColor: Colors.pink,
            activeTrackColor: Colors.yellow,
            value: result, 
            onChanged: (bool value1){
              setState(() {
                result = value1;
              });
            }
          ),
          ListTile(
            title: Text("flutter"),
            leading: Radio(
              value: 1, 
              groupValue: selectedOption, 
              onChanged: (value1){
                setState(() {
                  selectedOption = value1!;
                });
              }
            ),
          ),
          ListTile(
            title: Text("Dart"),
            leading: Radio(
              value: 2, 
              groupValue: selectedOption, 
              onChanged: (value2){
                setState(() {
                  selectedOption = value2!;
                });
              }
            ),
          ),
          ListTile(
            title: Text("SQL"),
            leading: Radio(
              value: 3, 
              groupValue: selectedOption, 
              onChanged: (value3){
                setState(() {
                  selectedOption = value3!;
                });
              }
            ),
          )
        ],
      ),
    );
  }
}