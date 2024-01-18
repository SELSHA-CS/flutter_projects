import 'package:flutter/material.dart';
import 'package:flutter_projects/LOGIN/homepage.dart';

void main(){
  runApp(
    MaterialApp(
      home: LoginPage(),
    ),
  );
}

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});

  final uname = TextEditingController();
  final pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: uname,
              decoration: InputDecoration(
                hintText: "USERNAME",
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: pwd,
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                hintText: "PASSWORD",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomePage(uname : "selsha", pwd : 123)));
            }, 
            child: Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}