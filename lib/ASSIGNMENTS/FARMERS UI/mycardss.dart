import 'package:flutter/material.dart';
class MyCards1 extends StatelessWidget {
  const MyCards1({
    super.key,
    required this.names,
  });

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(names.length, (index) => Card(
            color: Colors.green[200],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 50,
                width: 150,
                child: Center(
                  child: Text(names[index], style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                ),
            ),
            ),
          ),
        ),
      ),
    );
  }
}