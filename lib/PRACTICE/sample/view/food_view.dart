import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/sample/controller/foodpro.dart';
import 'package:flutter_projects/PRACTICE/sample/view/fooddet.dart';
import 'package:get/get.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {

    final FoodProvider fcontrl = Get.put(FoodProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: ListView.builder(
        itemCount: fcontrl.foodList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            Get.to(FoodDet(foods: fcontrl.foodList[index]));
          },
          leading: SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(fcontrl.foodList[index].image),
          ),
          title: Text(fcontrl.foodList[index].name),
          subtitle: Text(fcontrl.foodList[index].price),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.favorite, color: Colors.red,),
      ),
    );
  }
}