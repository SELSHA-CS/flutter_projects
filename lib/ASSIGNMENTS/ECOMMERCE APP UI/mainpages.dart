import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/bagpage.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/favpage.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/homepage.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/profilepage.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/shoppage.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  var index = 0;

  var screens = [
    HomePage(),
    ShopPage(),
    FavPage(),
    BagPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapIndex) {
            setState(() {
              index = tapIndex;
            });
          },
          selectedItemColor: Colors.black,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Bag"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile")
          ]),
      body: screens[index],
    );
  }
}
