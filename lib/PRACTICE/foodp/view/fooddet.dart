import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/foodp/controller/food_controller.dart';
import 'package:flutter_projects/PRACTICE/foodp/model/foods.dart';
import 'package:flutter_projects/PRACTICE/sample/controller/foodpro.dart';
import 'package:provider/provider.dart';

class FoodDet extends StatelessWidget {
  final Food foods;
  FoodDet({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {

    final foodProvider = Provider.of<FoodController>(context);

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
              Consumer<FoodProvider>(
                builder: (BuildContext context, FoodProvider value, Widget? child) { 
                  return MaterialButton(
                  color: Colors.blue,
                  onPressed: (){
                    if(!foodProvider.favFood.contains(foods)){
                      foodProvider.addFav(foods);
                    }else{
                      foodProvider.addFav(foods);
                    }
                  },
                  child: Text("ADD FAV"),
                  );
                },
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