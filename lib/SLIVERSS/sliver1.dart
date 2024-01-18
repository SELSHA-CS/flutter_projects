import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: SliverssRx(),
    ),
  );
}

class SliverssRx extends StatelessWidget {
  const SliverssRx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("Sliver Example"),
              bottom: AppBar(
                title: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Here...",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 15,
                (context, index) => Card(
                child: ListTile(
                  leading: Image.asset("assets/images/1.jpg"),
                  title: Text("Product"),
                  trailing: Icon(Icons.shopping_cart),
                ),
              )),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 15,
                (context, index) => Card(
                  color: Colors.white10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/1.jpg"),
                      Text("Mango", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text("\$208/kg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ), 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 15,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                color: Colors.black,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ), 
                  itemBuilder: ((context, index) => Card(
                    //color: Colors.white10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/1.jpg"),
                        Text("Mango", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                        // Text("\$208/kg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}