import 'package:flutter/material.dart';
import 'package:flutter_projects/SCREENS/home.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(
    MaterialApp(
      home: SignUp(),
    )
  );
}

class SignUp extends StatefulWidget {
  //const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

    bool pwd1 = true;
    bool pwd2 = true;
    var confirmPass;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION"),
        backgroundColor: Colors.pink[200],
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Center(
              child: Image.asset(
                  "assets/icons/p1.png",
                height: 150,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: commonform(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: pwd1,
                obscuringCharacter: '*',
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
                validator: (password){
                  confirmPass = password;
                  if(password!.isEmpty || password.length < 6){
                    return "password should not nbe null or length < 6";
                  }
                  else{
                    return null;
                  }
                },
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
                  if(cpassword != confirmPass || cpassword!.isEmpty){
                    return "password mismatch / empty";
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              var isValid = formKey.currentState!.validate();
              if(isValid == true){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Home())
                );
              }
            },
                child: Text("SIGNUP",
                style: GoogleFonts.ropaSans(
                  fontSize: 25,
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class commonform extends StatelessWidget {
  const commonform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        hintText: "Username",
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
