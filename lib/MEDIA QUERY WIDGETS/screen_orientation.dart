import 'package:flutter/material.dart';
import 'package:flutter_projects/MEDIA%20QUERY%20WIDGETS/largeScreen.dart';
import 'package:flutter_projects/MEDIA%20QUERY%20WIDGETS/smallScreen.dart';

void main(){
  runApp(MyPage());
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = MediaQuery.of(context).platformBrightness==Brightness.dark;
    return MaterialApp(
      theme: isDarkTheme ? ThemeData.light() : ThemeData.dark(),
      home: Screenn(),
    );
  }
}
class Screenn extends StatelessWidget {
  var orientation, height, width;
  //double? screensize;
  bool? isLargeScreen;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height      = MediaQuery.of(context).size.height;
    width       = MediaQuery.of(context).size.width;
    //screensize  = MediaQuery.of(context).size;
    isLargeScreen = width > 600;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Screen orientation"),
      // ),
      //body: orientation == Orientation.portrait
      // body: isLargeScreen == true
      // ? Container(
      //   color: Colors.blue,
      //   height: height/2,
      //   width: width/2,
      // )
      // : Container(
      //   color: Colors.purple,
      //   height: height/2,
      //   width: width/4,
      // ),
      body: isLargeScreen == true ? LargeScreen() : SmallScreen(),
    );
  }
}