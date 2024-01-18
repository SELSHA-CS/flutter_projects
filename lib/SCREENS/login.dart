import 'package:flutter/material.dart';
import 'package:flutter_projects/SCREENS/home.dart';
import 'package:flutter_projects/SCREENS/signup.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    )
  );
}

class Login extends StatelessWidget {
  //const Login({super.key});
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  String username = "Selsha@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        backgroundColor: Colors.pink[200],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/icons/p1.png",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              cursorColor: Colors.pink[200],
              controller: uname_ctrl,
              decoration: InputDecoration(
                hintText: "USERNAME",
                helperText: "Username should be an email",
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pwd_ctrl,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: "PASSWORD",
                helperText: "Password should be atleast 6 characters",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            if(uname_ctrl.text !="" && pwd_ctrl.text !=""){
              if(uname_ctrl.text == username && pwd_ctrl.text == password){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Home())
                );
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      backgroundColor: Colors.pink,
                      content: Text("Username or Password is incorrect"))
                );
              }
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    backgroundColor: Colors.pink,
                    content: Text("Username and Password should not be null"))
              );
            }
          },

              child: Text(
                  "LOGIN",
                style: GoogleFonts.ropaSans(
                  fontSize: 25,
                ),
              ),),

          TextButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SignUp())
            );
          } ,

              child: Text(
                  "Not a user...Register Here",
                style: GoogleFonts.ropaSans(
                  fontSize: 15,
                ),
              ),),
        ],
      ),
    );
  }
}
