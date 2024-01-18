import 'package:flutter/material.dart';
class MyGrids extends StatelessWidget {
  const MyGrids({
    super.key,
    required this.cards,
    required this.names,
  });

  final List<String> cards;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: cards.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Card(
            elevation: 9,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(cards[index], fit: BoxFit.fill,)),
                SizedBox(height: 15,),
                Text(names[index], style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}