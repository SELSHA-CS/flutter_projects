import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Farmers(),
    ),
  );
}

class Farmers extends StatelessWidget {
  var names = [
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "NUTRITION CHARGERS",
    "PACKED FLAVOURS",
    "GOURMET SALADS",
    "OFFERS"
  ];

  var images = [
    "assets/farmers_images/1.jpg",
    "assets/farmers_images/2.jpg",
    "assets/farmers_images/3.jpg",
    "assets/farmers_images/4.jpg",
    "assets/farmers_images/5.jpg",
    "assets/farmers_images/6.jpg",
    "assets/farmers_images/7.jpg",
  ];

  var cards = [
    "assets/farmers_images/c2.jpg",
    "assets/farmers_images/c3.jpg",
    "assets/farmers_images/c4.jpg",
    "assets/farmers_images/c5.jpg",
    "assets/farmers_images/c1.jpg",
    "assets/farmers_images/c6.jpg",
    "assets/farmers_images/c7.jpg",
    "assets/farmers_images/c8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            backgroundColor: Colors.green,
            title: Text("FARMERS FRESH ZONE"),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_history),
                  Text("Kochi"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                height: 40,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search for Vegetables, Fruits, ...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: ((context, index) => ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Card(
                    color: Colors.green[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(names[index], style: TextStyle(color: Colors.green[900], fontSize: 15),),
                    ),
                  ),
                )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              items: List.generate(images.length, (index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              )), 
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
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
                            ),
                          ),
                        ),
                        Text("30 MINS POLICY"),
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
                            ),
                          ),
                        ),
                        Text("TRACEABILITY"),
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
                            ),
                          ),
                        ),
                        Text("LOCAL SOURCING"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
              child: Text("Shop By Category", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: names.length,
              (context, index) => ClipRRect(
                //borderRadius: BorderRadius.circular(10),
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset(cards[index], fit: BoxFit.fill,),
                        Text(names[index]),
                      ],
                    ),
                  ),
                ),
              ),
            ), 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
