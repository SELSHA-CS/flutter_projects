import 'package:flutter/material.dart';
import 'package:flutter_projects/ANIMATIONS/lottie_animation.dart';
import 'package:flutter_projects/ASSIGNMENTS/HOTEL%20UI/hotelui.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardEx(),
    ),
  );
}

class OnboardEx extends StatelessWidget {
  const OnboardEx({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration page_decor = PageDecoration(
      bodyTextStyle: TextStyle(
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
      titlePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.yellow,
          Colors.orange,
          Colors.black
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
      )
    );
    PageDecoration page_decor1 = PageDecoration(
      bodyTextStyle: TextStyle(
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey,
      ),
      //titlePadding: EdgeInsets.all(5),
      imagePadding: EdgeInsets.all(5),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.blueAccent,
          Colors.lightBlue,
          Colors.lightBlueAccent,
          Colors.blueGrey,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Page1",
          //body: "hello",
          image: Image.asset("assets/images/h1.jpg"),
          body: "Order Food",
          decoration: page_decor,
        ),
        PageViewModel(
          titleWidget: Image.asset("assets/images/s1.jpg"),
          body: "Order Food",
          decoration: page_decor1,
        ),
        PageViewModel(
          titleWidget: Image.asset("assets/images/s2.jpg"),
          body: "Order Food",
        ),
      ],
      next: Text("Next"),
      showSkipButton: true,
      skip: Text("Skip"),
      done: Text("Continue"),
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Hotel_Ui())
      ),
      onSkip: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LottieEx())
      ),
      dotsDecorator: DotsDecorator(
        color: Colors.pink,
        activeColor: Colors.pinkAccent,
        size: Size(20, 20),
        activeSize: Size(40, 20),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )
      ),
    );
  }
}