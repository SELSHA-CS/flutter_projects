import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/home.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/register.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/screen.dart';


// void main(){
//   runApp(
//     MaterialApp(
//       home: Logins(),
//     )
//   );
// }

class Logins extends StatelessWidget {
  //const Logins({super.key});

  final uname = TextEditingController();
  final pwd = TextEditingController();

  String username = "S@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Screen())
          );
        },
            icon: Icon(
                Icons.chevron_left, color: Colors.black,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome back ! Login with your credentials",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              controller: uname,
              decoration: InputDecoration(
                //label: Text("Email"),
                hintText: "Email",
                labelText: "Email",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              controller: pwd,
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(),
                )
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            height: 60,
            child: ElevatedButton(onPressed: () {
              if(uname.text != "" && pwd.text != ""){
                if(uname.text == username && pwd.text == password){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home1())
                  );
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Username or password is incorrect"),
                        backgroundColor: Colors.pinkAccent,
                      )
                  );
                }
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Username and password should not be null"),
                    backgroundColor: Colors.pinkAccent,)
                );
              }
            },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blueAccent),
                  shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ))
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
          ),
          TextButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SignUps())
            );
          },
              child: Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  fontSize: 15,
                ),
              ))
        ],
      ),
    );
  }
}
