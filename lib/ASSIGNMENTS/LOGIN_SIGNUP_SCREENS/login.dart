import 'package:flutter/material.dart';

class Logins extends StatefulWidget {
  //const Logins({super.key});

  @override
  State<Logins> createState() => _LoginsState();
}

class _LoginsState extends State<Logins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("hello"),),);
  }
}