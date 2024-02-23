class Food{
  String name;
  String desc;
  String image;
  String price;

  Food({required this.name, required this.desc, required this.image, required this.price});
}

List<Food> foodItems = [
  Food(name: "Item1", desc: "description1", image: "assets/pngs/1.png", price: "120"),
  Food(name: "Item2", desc: "description2", image: "assets/pngs/2.jpg", price: "150"),
  Food(name: "Item3", desc: "description3", image: "assets/pngs/3.jpg", price: "100"),
  Food(name: "Item4", desc: "description4", image: "assets/pngs/4.jpg", price: "50"),
];