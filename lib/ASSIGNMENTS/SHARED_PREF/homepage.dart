import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late SharedPreferences pref;
  late String UserName;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async{
    pref = await SharedPreferences.getInstance();
    setState(() {
      UserName = pref.getString("Email")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2053),
      body: Column(
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
          Text("WELCOME $UserName", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFD6D6DF),
            fontSize: 30
          ),)
        ],
      ),
    );
  }
}