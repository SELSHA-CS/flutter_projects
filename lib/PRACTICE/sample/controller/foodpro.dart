import 'package:flutter_projects/PRACTICE/sample/model/foods.dart';
import 'package:get/get.dart';

class FoodProvider extends GetxController{
  //var foodList = foodItems.obs;
  RxList<Food> foodList = foodItems.obs;

  void addFav(Food slctd){
    foodList.add(slctd);
    print(foodList);
  }

  void remFav(Food slctd){
    foodList.remove(slctd);
    print(foodList);
  }
}