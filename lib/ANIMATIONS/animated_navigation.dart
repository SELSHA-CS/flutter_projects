import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: MainPageAnim(),
    ),
  );
}
class MainPageAnim extends StatelessWidget {
  const MainPageAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            PageRouteBuilder(
              transitionDuration: const Duration(seconds: 1),
              pageBuilder: (context, anim1, anim2){
              return Second_Page_Animation();
              },
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final offsetAnimation = animation.drive(tween);
                final curvedanimation = CurvedAnimation(
                  parent: animation, 
                  curve: Curves.fastEaseInToSlowEaseOut);

                return SlideTransition(
                  position: tween.animate(curvedanimation),
                  child: child,
                );
              },
            ));
          }, 
          child: const Text("Slide Transition")),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a1, a2){
              return Second_Page_Animation();
            },
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (context, an1, an2, child){
              return FadeTransition(opacity: an1, child: child,);
            },
            ));
          }, 
          child: const Text("Fade Transition")),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a1, a2){
              return Second_Page_Animation();
            },
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (context, an1, an2, child){
              return ScaleTransition(scale: an1, child: child,);
            },
            ));
          }, 
          child: const Text("Scale Transition")),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}

class Second_Page_Animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainPageAnim()));
        }, 
        child: const Text("GO BACK")),
      ),
    );
  }
}