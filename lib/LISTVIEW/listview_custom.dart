import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: ListView5(),
      )
  );
}

class ListView5 extends StatelessWidget {
  //const ListView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Custome"),
      ),
      body: ListView.custom(
        scrollDirection: Axis.horizontal,
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 25,
                  (context, index) => const Card(
                    color: Colors.tealAccent,
                child: Icon(Icons.favorite),
              ))),
      // ListView.custom(
      //     childrenDelegate: SliverChildListDelegate(
      //         List.generate(
      //             15, (index) => Card(
      //           child: Image.asset("assets/icons/p2.png"),
      //         ))))
    );
  }
}
