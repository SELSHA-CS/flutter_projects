import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView3(),
    ),
  );
}

class ListView3 extends StatelessWidget {
  //const ListView3({super.key});

  var pngs = [
    "assets/pngs/apple.png",
    "assets/pngs/mango.png",
    "assets/pngs/banana.png",
    "assets/pngs/grapes.png",
    "assets/pngs/orange.png",
    "assets/pngs/peach.png",
    "assets/pngs/watermelon.png",
    "assets/pngs/kiwi.png",
  ];

  var names = [
    "Apple",
    "Mango",
    "Banana",
    "Grapes",
    "Orange",
    "Peach",
    "Watermelon",
    "Kiwi",
  ];

  var units = [
    "Kg",
    "Doz",
    "Doz",
    "Kg",
    "Doz",
    "Pc",
    "Kg",
    "Pc",
  ];

  var price = [
    "\$20",
    "\$30",
    "\$10",
    "\$8",
    "\$25",
    "\$40",
    "\$15",
    "\$25",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Product List")),
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: ListView.builder(
        itemCount: pngs.length,
        itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 90,
            child: Card(
              color: Colors.blueGrey[200],
              child: ListTile(
                leading: Image.asset(
                    pngs[index],
                  height: 100,
                  width: 100,
                ),
                title: Text(
                    "Name: ${names[index]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Unit: ${units[index]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Price: ${price[index]}",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {}, 
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}