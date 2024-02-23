import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/foodp/controller/food_controller.dart';
import 'package:flutter_projects/PRACTICE/foodp/view/foodview.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    GetMaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => FoodController(),
        child: FoodView(),
      ),
    )
  );
}