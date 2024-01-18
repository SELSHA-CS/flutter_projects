import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/logins.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/register.dart';

import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    )
  );
}

class Screen extends StatelessWidget {
  //const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello There!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Automatic identity verification which enable you to verify your identity",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/2.jpg", height: 350, width: 350,),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Logins())
                    );
                  },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blueAccent),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))
                      ),
                   child: Text(
                    "LOGIN",
                     style: TextStyle(
                       fontSize: 15,
                     ),
                    )),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUps())
                    );
                  },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                      side: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      )),
                      // style: ButtonStyle(
                      //   backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.redAccent),
                      //   shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(30),
                      //   ))
                      // ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                )
          ],
        ),
      ),
    );
  }
}