import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/SHARED_PREF/loginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();

    final uname_controller = TextEditingController();
    final phn_controller = TextEditingController();
    final pwd_controller = TextEditingController();

    late SharedPreferences pref;

    return Scaffold(
      backgroundColor: Color(0xFF1B2053),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
              Text("WELCOME BUDDY", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFD6D6DF),
                fontSize: 30
              ),),
              Text("Please Fill Your Details", style: TextStyle(
                color: Color(0xFFD6D6DF),
                fontSize: 15
              ),),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: uname_controller,
                  decoration: InputDecoration(
                    hintText: "Your Email ID",
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
                  validator: (email){
                    if(email!.isEmpty || !email.contains('@')){
                      return "Enter a valid Email ID";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: phn_controller,
                  decoration: InputDecoration(
                    hintText: "Your Mobile Number",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(172, 179, 179, 187),
                    ),
                    prefixIcon: Icon(Icons.phone, color: Color(0xFFD6D6DF),),
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
                  validator: (phone){
                    if(phone!.isEmpty || phone.length < 10){
                      return "Enter a valid Mobile Number";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: pwd_controller,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
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
                  validator: (pwd){
                    if(pwd!.isEmpty || pwd.length < 6){
                      return "Enter Minimum 6 Characters";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () async{
                  pref = await SharedPreferences.getInstance();

                  var valid = formKey.currentState?.validate();
                  if(valid == true){

                    pref.setString("Email", uname_controller.text);
                    pref.setString("Phone", phn_controller.text);
                    pref.setString("Password", pwd_controller.text);

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );

                    uname_controller.text = "";
                    phn_controller.clear();
                    pwd_controller.text = "";
                  }
                },
                minWidth: 200,
                height: 50,
                color: Color(0xFF079DF8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ), 
                child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen())
                  );
                }, 
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Already have account ?", style: TextStyle(
                      color: Color(0xFFD6D6DF),
                      fontSize: 15,
                    ),), 
                    SizedBox(width: 10,),
                    Text("Log in", style: TextStyle(
                      color: Color(0xFF079DF8),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
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