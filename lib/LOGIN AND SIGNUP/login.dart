import 'package:flutter/material.dart';
import 'package:flutter_projects/LOGIN%20AND%20SIGNUP/home.dart';
import 'package:flutter_projects/LOGIN%20AND%20SIGNUP/register.dart';

void main(){
  runApp(MaterialApp(home: Login(),));
}
class Login extends StatefulWidget {
  
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var Form_Key = GlobalKey<FormState>();

  var uname = TextEditingController();

  var pswd = TextEditingController();

  var pw = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: Form_Key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: uname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Email",
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: pswd,
                  obscureText: pw,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if(pw == true){
                            pw = false;
                          }
                          else{
                            pw = true;
                          }
                        });
                      }, 
                      icon: Icon(pw == true ? Icons.visibility_off : Icons.visibility)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    if(uname.text == "admin" && pswd.text == "1234"){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home())
                      );
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid login credentials"))
                      );
                    }
                  }, 
                  child: Text("Login", style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register())
                    );
                  }, 
                  child: Text("Register", style: TextStyle(color: Colors.white)),
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