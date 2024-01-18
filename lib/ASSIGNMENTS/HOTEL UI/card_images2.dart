import 'package:flutter/material.dart';

class CardWidget2 extends StatelessWidget {

  final String image;
  final String text1;

  CardWidget2({required this.image, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            child: Container(
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text1, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text("A five star hotel in kochi", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("\$180 / night", style: TextStyle(color: Colors.blue),),
                        Row(
                          children: [
                            Icon(Icons.local_taxi, color: Colors.blue,),
                            Icon(Icons.phone, color: Colors.blue,),
                            Icon(Icons.wine_bar, color: Colors.blue,),
                            Icon(Icons.wifi, color: Colors.blue,),
                          ],
                        ),
                        ElevatedButton(onPressed: (){}, 
                        child: Text("BOOK NOW"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}