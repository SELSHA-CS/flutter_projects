import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/sample/controller/foodpro.dart';
import 'package:flutter_projects/PRACTICE/sample/model/foods.dart';
import 'package:get/get.dart';

class FoodDet extends StatelessWidget {
  final Food foods;
  FoodDet({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {

    final FoodProvider fcontrl = Get.put(FoodProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(foods.name),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(foods.image),
          ),
          Text(foods.name),
          Text(foods.desc),
          Text(foods.price),
          SizedBox(height: 40,),
          Row(
            children: [
              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  //if()
                },
                child: Text("ADD FAV"),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: (){},
                child: Text("READ"),
              ),
            ],
          )
        ],
      ),
    );
  }
}