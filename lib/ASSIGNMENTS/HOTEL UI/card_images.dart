import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  CardWidget({required this.image, required this.text1, required this.text2, required this.text3, required this.text4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            child: Container(
              height: 250,
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.asset(image, fit: BoxFit.fill,)),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(text1, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(text2, style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text3, style: TextStyle(color: Colors.blue),),
                      Row(
                        children: [
                          Text(text4, style: TextStyle(color: Colors.blue),),
                          Icon(Icons.star, color: Colors.blue,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
           ),
          ),
        ),
    );
  }
}