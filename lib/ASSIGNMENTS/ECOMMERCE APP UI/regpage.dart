import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/loginpage.dart';

class RegPage extends StatelessWidget {
  const RegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          minWidth: 200,
            height: 50,
            color: Colors.blue,
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
          child: Text("REGISTER"),
        ),
      ),
    );
  }
}
