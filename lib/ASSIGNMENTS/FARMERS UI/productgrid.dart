import 'package:flutter/material.dart';
class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
    required this.products,
  });

  final List<String> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: Card(
              child: Column(
                children: [
                  Image.asset(products[index], fit: BoxFit.fill,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$32.4"),
                      Text("14% OFF"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("0.3kg"),
                      ElevatedButton(onPressed: (){}, child: Text("ADD",), style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}