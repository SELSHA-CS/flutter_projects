import 'package:flutter/material.dart';
import 'package:flutter_projects/LOGIN%20AND%20SIGNUP/login.dart';

class Register extends StatefulWidget {
  
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formKey = GlobalKey<FormState>();

  String? pass;

  //var pwdcontroller = TextEditingController();
  var is_pwd_hidden = true;
  var pwd2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Email",
                  ),
                  validator: (email){
                    if(email!.isEmpty || !email.contains('@')){
                      return "invalid email/ or empty field";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  //controller: pwdcontroller,
                  obscureText: is_pwd_hidden,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if(is_pwd_hidden == true){
                            is_pwd_hidden = false;
                          }
                          else{
                            is_pwd_hidden = true;
                          }
                        });
                      }, 
                      icon: Icon(is_pwd_hidden == true ? Icons.visibility_off : Icons.visibility)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                  ),
                  validator: (pwd){
                    pass = pwd;
                    if(pwd!.isEmpty || pwd.length < 6){
                      return "length should be > 6 / field must not be emoty";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: pwd2,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if(pwd2 == true){
                            pwd2 = false;
                          }
                          else{
                            pwd2 = true;
                          }
                        });
                      }, 
                      icon: Icon(pwd2 == true ? Icons.visibility_off : Icons.visibility)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Confirm Password",
                  ),
                  validator: (cpwd){
                    //if(cpwd != pwdcontroller.text){
                    if(cpwd != pass){
                      return "password must be same";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    var valid = formKey.currentState?.validate();
                    if(valid == true){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please check the fields"))
                      );
                    }
                  }, 
                  child: Text("Register", style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}