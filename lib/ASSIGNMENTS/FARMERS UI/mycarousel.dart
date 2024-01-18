import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class MyCarousel extends StatelessWidget {
  const MyCarousel({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(images.length, (index) => Container(
        //height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(images[index]),
            fit: BoxFit.fill,
          ),
        ),
        //child: Text(headings[index]),
      )), 
      options: CarouselOptions(
        height: 250,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 5),
        autoPlay: true,
        initialPage: 1,
        pauseAutoPlayOnTouch: true,
        enableInfiniteScroll: true,
      ),
    );
  }
}