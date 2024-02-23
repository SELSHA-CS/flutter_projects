import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/sample/view/food_view.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodView(),
    );
  }
}