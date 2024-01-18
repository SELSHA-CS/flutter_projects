import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/home.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/logins.dart';
import 'package:flutter_projects/ASSIGNMENTS/LOGIN_SIGNUP_SCREENS/screen.dart';



class SignUps extends StatefulWidget {
  //const SignUp({super.key});

  @override
  State<SignUps> createState() => _SignUpState();
}

class _SignUpState extends State<SignUps> {

  bool pwd1 = true;
  bool pwd2 = true;
  var confrimPass;

  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          Text(
            "Create an Account. Its free",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Form(
            key: FormKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (email){
                        if(email!.isEmpty || !email.contains('@')){
                          return "enter a valid email id";
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      obscureText: pwd1,
                      obscuringCharacter: '*',
                      validator: (password){
                        if(password!.isEmpty || password.length<6){
                          return "password should not be null or < 6";
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if(pwd1){
                              pwd1 = false;
                            }
                            else{
                              pwd1 = true;
                            }
                          });
                        },
                            icon: Icon(pwd1 == true ? Icons.visibility : Icons.visibility_off)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      obscureText: pwd2,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if(pwd2){
                              pwd2 = false;
                            }
                            else{
                              pwd2 = true;
                            }
                          });
                        },
                            icon: Icon(pwd2 == true ? Icons.visibility : Icons.visibility_off)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (cpassword){
                        if(confrimPass != cpassword || cpassword!.isEmpty){
                          return "password mismatch or incorrect";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {
                    var isValid = FormKey.currentState!.validate();
                    if(isValid == true){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home1())
                      );
                    }
                  },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        backgroundColor: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  TextButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Logins())
                    );
                  },
                      child: Text(
                        "Already have an account? Login",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ))
                ],
              )
          )
        ],
      ),
    );
  }
}
