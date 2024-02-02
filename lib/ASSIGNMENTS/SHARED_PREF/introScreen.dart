import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/loginScreen.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/registerScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2053),
      body: Stack(
        children: [
          // ClipPath(
          //   clipper: OvalBottomBorderClipper(),
          // ),
          Positioned(
            top: 50,
            left: 60,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sharedpref_images/img2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Hi There !!", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD6D6DF),
                  fontSize: 30
                ),),
                Text("To keep connected with us Please select your option", style: TextStyle(
                  color: Color(0xFFD6D6DF),
                  fontSize: 15
                ),)
              ],
            ),
          ),
          Positioned(
            top: 500,
            left: 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF079DF8), 
                  child: Text("LOG IN", style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RegisterScreen())
                    );
                  },
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF079DF8), 
                  child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 150,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(FontAwesomeIcons.facebook, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.instagram, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.youtube, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.twitter, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}