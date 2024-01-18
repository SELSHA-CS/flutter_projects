import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/fieldsets.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/mycardss.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/mycarousel.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/mygrids.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/mytext2.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/mytexts.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/productgrid.dart';
import 'package:flutter_projects/ASSIGNMENTS/FARMERS%20UI/searchbox.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homes(),
  ));
}

class Homes extends StatefulWidget {
  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  var names = [
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "OFFERS",
    "NUTRITION CHARGERS",
    "PACKED FLAVOURS",
    "GOURMET SALADS"
  ];

  var images = [
    "assets/farmers_images/1.jpg",
    "assets/farmers_images/2.jpg",
    "assets/farmers_images/3.jpg",
    "assets/farmers_images/4.jpg",
    "assets/farmers_images/5.jpg",
    "assets/farmers_images/6.jpg",
    "assets/farmers_images/7.jpg",
  ];

  var cards = [
    "assets/farmers_images/c2.jpg",
    "assets/farmers_images/c3.jpg",
    "assets/farmers_images/c4.jpg",
    "assets/farmers_images/c5.jpg",
    "assets/farmers_images/c1.jpg",
    "assets/farmers_images/c6.jpg",
    "assets/farmers_images/c7.jpg",
    "assets/farmers_images/c8.jpg",
  ];

  var products = [
    "assets/farmers_images/p1.jpg",
    "assets/farmers_images/p2.jpg",
    "assets/farmers_images/p3.jpg",
    "assets/farmers_images/p4.jpg",
    "assets/farmers_images/p5.jpg",
    "assets/farmers_images/p6.jpg",
    "assets/farmers_images/p7.jpg",
    "assets/farmers_images/p8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("FARMERS FRESH ZONE"),
        actions: [
          Row(
            children: [
              Icon(Icons.location_history),
              Text("Kochi"),
              Icon(Icons.arrow_drop_down_outlined),
            ],
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.lightGreen,
          title: SearchBox(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCards1(names: names),
            MyCarousel(images: images),
            FieldSets(),
            MyText(),
            MyGrids(cards: cards, names: names),
            MyText2(),
            ProductGrid(products: products)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ]),
    );
  }
}