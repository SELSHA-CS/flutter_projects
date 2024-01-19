import 'package:flutter/material.dart';
import 'package:flutter_projects/PRACTICE/posts/post_1.dart';
import 'package:flutter_projects/PRACTICE/posts/post_2.dart';
void main(){
  runApp(
    MaterialApp(
      home: PageVieWEx(),
    ),
  );
}
class PageVieWEx extends StatelessWidget {
  final _controller = PageController();
  //const PageVieWEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          MyPost1(),
          MyPost2(),
        ],
      ),
    );
  }
}