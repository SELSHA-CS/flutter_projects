import 'package:flutter/material.dart';
class MyText2 extends StatelessWidget {
  const MyText2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text("Best Selling Products",
              style: TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
