import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: DrawerEx(),
    ),
  );
}

class DrawerEx extends StatelessWidget {
  //const DrawerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/india.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text("Selsha"), 
              accountEmail: Text("Selsha@gmail.com"),
              currentAccountPicture: Image.asset("assets/icons/p1.png"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/p1.png"),
                ),
                //Image.asset("assets/icons/p1.png"),
                Image.asset("assets/icons/p2.png"),
              ],
              arrowColor: Colors.red,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Accont"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}