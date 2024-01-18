import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: ListView2(),
    )
  );
}

class ListView2 extends StatelessWidget {
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

  var icons = [
    const Icon(Icons.favorite, color: Colors.green,),
    const Icon(Icons.ac_unit, color: Colors.red,),
    const Icon(Icons.snapchat, color: Colors.yellow,),
    const Icon(Icons.access_alarms_rounded, color: Color.fromARGB(255, 6, 6, 7),),
    const Icon(Icons.account_box, color: Colors.purple),
    const Icon(Icons.account_circle_outlined, color: Colors.green,),
    const Icon(Icons.add_a_photo, color: Colors.red,),
    const Icon(Icons.radio, color: Colors.yellow,),
    const Icon(Icons.coffee, color: Colors.blue,),
    const Icon(Icons.phone, color: Colors.purple,),
    const Icon(Icons.person, color: Colors.green,),
    const Icon(Icons.contact_mail_sharp, color: Colors.red),
  ];
    // Icons.ac_unit,
    // Icons.snapchat,
    // Icons.access_alarms_rounded,
    // Icons.account_box,
    // Icons.account_circle_outlined,
    // Icons.add_a_photo,
    // Icons.favorite,
    // Icons.coffee,
    // Icons.phone,
    // Icons.person,
    // Icons.contact_mail_sharp,
    // Icons.radio];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView ListGenerate"),
      ),
      body: ListView(
        children: List.generate(name.length, (index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset(images[index]),
              ),
            title: Text(name[index]),
            //subtitle: Wrap(children: [icons[index], icons[index],],),
            subtitle: icons[index],//Icon(icons[index]),
            trailing: const CircleAvatar(
              backgroundColor: Colors.teal,
            ),
          ),
        ))
      ),
    );
  }
}
