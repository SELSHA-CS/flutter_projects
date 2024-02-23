import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/foodp/controller/food_controller.dart';
import 'package:flutter_projects/PRACTICE/foodp/view/fooddet.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {

    var foodProvider = Provider.of<FoodController>(context); 

    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: ListView.builder(
        itemCount: foodProvider.foodList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            Get.to(FoodDet(foods: foodProvider.foodList[index]));
            //Get.to(FoodDet(foods: fcontrl.foodList[index]));
            //Navigator.push(context, MaterialPageRoute(builder: (context) => foods: foodProvider.foodList[index]));
            //Navigator.pushNamed(context, foods: foodProvider.foodList[index]);
          },
          leading: SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(foodProvider.foodList[index].image),
          ),
          title: Text(foodProvider.foodList[index].name),
          subtitle: Text(foodProvider.foodList[index].price),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.favorite, color: Colors.red,),
      ),
    );
  }
}