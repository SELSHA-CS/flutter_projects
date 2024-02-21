import 'package:flutter/material.dart';
import 'package:flutter_projects/ASSIGNMENTS/ECOMMERCE%20APP%20UI/allpage.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("All Shoes")),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            bottom: TabBar(tabs: [
              Tab(
                child: Text("All"),
              ),
              Tab(
                child: Text("Lifestyle"),
              ),
              Tab(
                child: Text("Jordan"),
              ),
              Tab(
                child: Text("Running"),
              ),
            ]),
          ),
          body: TabBarView(children: [
            AllPage(),
            AllPage(),
            AllPage(),
            AllPage(),
          ]),
        ),
    );
  }
}
