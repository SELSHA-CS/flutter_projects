import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/HOTEL%20UI/card_images.dart';
import 'package:flutter_projects/ASSIGNMENTS/HOTEL%20UI/card_images2.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hotel_Ui(),
    ),
  );
}

class Hotel_Ui extends StatefulWidget {

  @override
  State<Hotel_Ui> createState() => _Hotel_UiState();
}

class _Hotel_UiState extends State<Hotel_Ui> {

  var hotels = [
    "assets/images/hotel1.jpg",
    "assets/images/h2.jpg",
    "assets/images/hotel3.jpg",
    "assets/images/hotel4.jpg",
    "assets/images/hotel5.jpg",
    "assets/images/hotel6.jpg",
  ];

  var hname = [
    "Crown Plazza",
    "Hotel marriott",
    "Grand Hyatt",
    "Hotel Elite",
    "Coastel Haven",
    "Garden Retreat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello @rjun", style: TextStyle(
                color: Colors.grey,),),
            Text("Find Your Favorite Hotel", style: TextStyle(
                color: Colors.black,
              ),),
          ],),
        actions: [CircleAvatar(
            backgroundImage: AssetImage("assets/images/h1.jpg"),
            radius: 50,
          ),],
        bottom: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search For Hotels",
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Popular Hotels", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 250,
                child: Row(
                  children: List.generate(hname.length, (index) => Card(
                    child: Container(
                      height: 300,
                      width: 250,
                      child: CardWidget(
                        image: hotels[index], 
                        text1: hname[index], 
                        text2: "A Five Star Hotel in Kochi", 
                        text3: "\$180 / night", 
                        text4: "4.5",
                      ),
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Hotel Packages", style: TextStyle(fontSize: 20),),
                ),
                Row(
                  children: [
                    Text("view all", style: TextStyle(fontSize: 20, color: Colors.blue),),
                    Icon(Icons.double_arrow, color: Colors.blue,),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(hotels.length, (index) => Card(
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    child: CardWidget2(
                      image: hotels[index], 
                      text1: hname[index]
                    ),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}