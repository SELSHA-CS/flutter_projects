import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView4(),
    )
  );
}

class ListView4 extends StatelessWidget {
  //const ListView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Seperated"),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => Card(
            color: Colors.pinkAccent,
            child: Image.asset("assets/icons/p2.png"),
          )),
          separatorBuilder: ((context, index) => const Divider(
            color: Colors.red,
            thickness: 5,
          )),
          itemCount: 20),
    );
  }
}
