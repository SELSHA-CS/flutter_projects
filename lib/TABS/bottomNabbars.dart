import 'package:flutter/material.dart';
import 'package:flutter_projects/GRIDVIEW/gridviewmaxcrossax.dart';
import 'package:flutter_projects/LISTVIEW/listview_generate.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: BottomNavs(),
    ),
  );
}

class BottomNavs extends StatefulWidget {
  //const BottomNavs({super.key});

  @override
  State<BottomNavs> createState() => _BottomNavsState();
}

class _BottomNavsState extends State<BottomNavs> {

  var index = 0;// to change when tapping each navbar

  var screens = [
    GridView2(),
    ListView2(),
    GridView2(),
    ListView2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex){
          setState(() {
            index = tapIndex;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(backgroundColor: Colors.green, icon: Icon(Icons.search, color: Colors.red,), label: "search"),
          BottomNavigationBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.home, color: Colors.red), label: "home"),
          BottomNavigationBarItem(backgroundColor: Colors.yellow, icon: Icon(Icons.person, color: Colors.red), label: "profile"),
          BottomNavigationBarItem(backgroundColor: Colors.pink, icon: Icon(Icons.settings, color: Colors.red), label: "settings"),
        ],
      ),
      body: screens[index],
    );
  }
}