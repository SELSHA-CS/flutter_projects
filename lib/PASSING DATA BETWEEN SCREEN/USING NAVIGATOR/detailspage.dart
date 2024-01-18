import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/PASSING%20DATA%20BETWEEN%20SCREEN/USING%20NAVIGATOR/dummydata.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //to read value form previous pge
    final productId = ModalRoute.of(context)?.settings.arguments;
    //fetch that single map (or product) corresponding to the above id
    final product = products.firstWhere((element) => element['id'] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT DETAILS"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product["image"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(product['name']),
          Text("${product['price']}"),
        ],
      ),
    );
  }
}