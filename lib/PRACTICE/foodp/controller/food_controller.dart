import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/foodp/model/foods.dart';

class FoodController extends ChangeNotifier{
  final List<Food> _foodList = foodItems;
  List<Food> get foodList => _foodList;

  final List<Food> _favFood = [];
  List<Food> get favFood => _favFood;

  void addFav(Food favdish){
    favFood.add(favdish);
    print(favFood);
    notifyListeners();
  }
}