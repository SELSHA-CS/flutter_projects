import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListView2(),
    ),
  );
}

class ListView2 extends StatelessWidget {
  //const ListView2({super.key});

  var images = [
    "assets/images/india.jpg",
    "assets/images/finland.jpeg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/newyork.jpg",
    "assets/images/paris.jpg",
    "assets/images/india1.jpg",
    "assets/images/london2.jpg",
  ];

  var h1 = [
    "Delhi",
    "Finland",
    "London",
    "Vancouver",
    "New York",
    "Paris",
    "Delhi",
    "London",
  ];

  var h2 = [
    "India",
    "Europe",
    "UK",
    "Canada",
    "US",
    "France",
    "India",
    "UK",
  ];

  var h3 = [
    "Population : 32.9 mil",
    "Population : 5.54 mil",
    "Population : 8.8 mil",
    "Population : 2.6 mil",
    "Population : 1.8 mil",
    "Population : 1 mil",
    "Population : 32.9 mil",
    "Population : 8.8 mil",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
          child: Text("Cities Around World"),
        ),
      ),
      body: ListView(
        children: List.generate(images.length, (index) => ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(25.0),
          ),
          child: Card(
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    images[index],
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      h1[index],
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      h2[index],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      h3[index],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
        ),
        ),
      ),
    );    
  }
}
