import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactList(),
      )
  );
}

class ContactList extends StatelessWidget {
  //const ListView2({super.key});

  var name = [
    "anu",
    "bella",
    "chris",
    "derick",
    "emily",
    "fiona",
    "ginny",
    "harley",
    "iza",
    "jack",
    "kris",
    "livia"
  ];

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

  var nos = [
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "123456789",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: ListView(
          children: List.generate(name.length, (index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),

              ),
              title: Text(name[index]),
              subtitle: Text(nos[index]),
              trailing: Icon(Icons.call,
              color: Colors.green,),
            ),
          ))
      ),
    );
  }
}
