import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/homepage.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/registerScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();

    final username = TextEditingController();
    final pwd = TextEditingController();

    late SharedPreferences pref;

    return Scaffold(
      backgroundColor: Color(0xFF1B2053),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
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
              SizedBox(height: 20,),
              Text("WELCOME BACK !!", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFD6D6DF),
                fontSize: 30
              ),),
              Text("Please Enter Your User Name and Password", style: TextStyle(
                color: Color(0xFFD6D6DF),
                fontSize: 15
              ),),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: "Your Username",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(172, 179, 179, 187),
                    ),
                    prefixIcon: Icon(Icons.person, color: Color(0xFFD6D6DF),),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: pwd,
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(172, 179, 179, 187),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Color(0xFFD6D6DF),),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
                ),
              ),
              SizedBox(height: 40,),
              MaterialButton(
                onPressed: () async{
                  pref = await SharedPreferences.getInstance();

                  String sUsername = pref.getString("Email") ?? "";
                  String sPass = pref.getString("Password") ?? "";

                  if(username.text == sUsername && pwd.text == sPass){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Invalid username or password"))
                    );
                  }
                },
                minWidth: 200,
                height: 50,
                color: Color(0xFF079DF8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ), 
                child: Text("LOG IN", style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => RegisterScreen())
                  );
                }, 
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don't have account ?", style: TextStyle(
                      color: Color(0xFFD6D6DF),
                      fontSize: 15,
                    ),), 
                    SizedBox(width: 10,),
                    Text("Sign in", style: TextStyle(
                      color: Color(0xFF079DF8),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(FontAwesomeIcons.facebook, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                  FaIcon(FontAwesomeIcons.instagram, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                  FaIcon(FontAwesomeIcons.youtube, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                  FaIcon(FontAwesomeIcons.twitter, color: Color(0xFFD6D6DF),),SizedBox(width: 10,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}