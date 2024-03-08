import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main(){
  runApp(
    MaterialApp(
      home: CarouseEx(),
    ),
  );
}

class CarouseEx extends StatelessWidget {
  //const CarouseEx({super.key});

  var images = [
    "assets/images/bird.png",
    "assets/images/bg.jpg",
    "assets/icons/p7.png",
    "assets/icons/p3.png",
    "assets/images/flower.png",
    "assets/icons/p8.png",
    "assets/images/c2.png",
    "assets/images/bird.png",
    "assets/images/flower.png",
    "assets/images/bird.png",
    "assets/images/profile.png",
    "assets/images/c2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel Slider"),
      ),
      body: CarouselSlider(
        items: List.generate(
          6, 
          (index) => Container(
            //color: Colors.primaries[index % Colors.primaries.length],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.fill,
              )
            ),
          )), 
          options: CarouselOptions(
            viewportFraction: .8,
            initialPage: 1,
            autoPlayInterval: const Duration(seconds: 2),
            enableInfiniteScroll: true,
            autoPlay: true,
            pauseAutoPlayOnTouch: true
          ),
        ),
    );
  }
}