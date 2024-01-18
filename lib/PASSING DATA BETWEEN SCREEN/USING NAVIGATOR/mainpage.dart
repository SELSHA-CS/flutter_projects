import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/PASSING%20DATA%20BETWEEN%20SCREEN/USING%20NAVIGATOR/detailspage.dart';
import 'package:flutter_projects/PASSING%20DATA%20BETWEEN%20SCREEN/USING%20NAVIGATOR/dummydata.dart';

void main(){
  runApp(
    MaterialApp(
      home: Product_Main(),
      routes: {
        "detailsPage":(context)=>DetailsPage(),
      },
    ));
}
class Product_Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("SHOP ME"),
        titleTextStyle: TextStyle(color: Colors.yellow),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: products.map((product) => InkWell(
          onTap: (){
            Navigator.pushNamed(context, "detailsPage", arguments: product["id"]);
          },
          child: Card(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(0),
                      ),
                      image: DecorationImage(
                        image: AssetImage("${product["image"]}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text("${product["name"]}"),
                Text("${product["price"]}"),
              ],
            ),
          ),
        )).toList(),
      )
    );
  }
}