import 'package:flutter/material.dart';
class FieldSets extends StatelessWidget {
  const FieldSets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InputDecorator(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/farmers_images/i1.png"),
                    )
                  ),
                ),
                Text("30 MINS POLICY")
              ],
            ),
            Column(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/farmers_images/i2.png"),
                    )
                  ),
                ),
                Text("TRACEABILITY")
              ],
            ),
            Column(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/farmers_images/i3.png"),
                    )
                  ),
                ),
                Text("LOCAL SOURCING")
              ],
            ),
          ],
        ),
      ),
    );
  }
}