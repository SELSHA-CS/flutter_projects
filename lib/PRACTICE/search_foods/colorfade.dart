import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagePaths = [
    'assets/pngs/1.png',
    'assets/pngs/2.jpg',
    'assets/pngs/3.jpg',
    'assets/pngs/4.jpg',
    'assets/pngs/apple.png',
    'assets/pngs/banana.png',
    'assets/pngs/grapes.png',
    'assets/pngs/kiwi.png',
    'assets/pngs/mango.png',
    'assets/pngs/orange.png',
    'assets/pngs/peach.png',
    'assets/pngs/watermelon.png',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lighter Background Color'),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.5), // Adjust opacity as needed
                BlendMode.srcOver,
              ),
              child: Image.asset(
                imagePaths[index],
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}