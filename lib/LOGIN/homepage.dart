import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String? uname;
  int? pwd;
  HomePage({super.key, this.uname, this.pwd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome $uname , your password is $pwd"),
      ),
    );
  }
}