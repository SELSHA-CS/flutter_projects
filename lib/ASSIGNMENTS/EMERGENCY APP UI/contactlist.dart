import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactList extends StatelessWidget {

  var names = [
    "James Parker",
    "Christina Belt",
    "George Graham",
    "Jennifer Donough",
    "Carl Geer",
    "James Powers",
  ];
  var nos = [
    "408-747-7238",
    "309-337-8350",
    "309-295-8912",
    "914-684-6019",
    "916-232-3746",
    "610-970-6818",
  ];
  var profiles = [
    "assets/emergency_images/p5.jpg",
    "assets/emergency_images/p1.jpg",
    "assets/emergency_images/p6.jpg",
    "assets/emergency_images/p2.jpg",
    "assets/emergency_images/p11.jpg",
    "assets/emergency_images/p7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEA1C1C),
        title: Center(
          child: Text("EMERGENCY CONTACT LIST", style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
          ),),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        actions: [
          Icon(Icons.add_circle_outline, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(profiles[index]),
              ),
              title: Text(names[index]),
              subtitle: Text(nos[index]),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
          side: BorderSide(width: 150)
        ),
        backgroundColor: Color(0xFFEA1C1C),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ContactList())
          );
        },
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.calendar_month),
              // Padding(
              //   padding: const EdgeInsets.only(top: 28.0),
              //   child: Text('USE CARD'),
              // ),
              Icon(Icons.folder),
              Icon(Icons.person_outline)
            ],
          ),
        ),
        color: Color.fromARGB(255, 219, 214, 214),
      ),
    );
  }
}