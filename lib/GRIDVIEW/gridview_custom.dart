import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: GridView7()
    )
  );
}

class GridView7 extends StatelessWidget {
  //const GridView7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView - Custom"),
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 20,
                  (context, index) => Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/2.jpg"),
              fit: BoxFit.fill,),
            ),
          )))


      // GridView.custom(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 4),
      //     childrenDelegate: SliverChildListDelegate(
      //       List.generate(20, (index) => Container(
      //         height: 50,
      //         width: 50,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/images/1.jpg"),
      //             fit: BoxFit.fill,),
      //         ),
      //       ))
      //     )),
    );
  }
}
