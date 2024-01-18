import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        theme: ThemeData(
          //primaryColor: Colors.green,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.green
            )
        ),
        debugShowCheckedModeBanner: false,
        home: ListView1(),
      )
  );
}

class ListView1 extends StatelessWidget {
  //const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("LIST VIEW"),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 20,),
          const Icon(Icons.search),
          // SizedBox(
          //   width: 20,
          // ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("New Group")),
              const PopupMenuItem(child: Text("New Broadcast")),
              const PopupMenuItem(child: Text("Linked Devices")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],
        backgroundColor: Colors.lightGreen,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add),),
      body: ListView(
        children: [
          // Center(child: Text("CUSTOMER LIST")),
          // Image.asset("assets/icons/bird.png"),
          // Image.asset("assets/icons/flower.png"),
          // Image.asset("assets/icons/profile.png"),
          // Image.asset("assets/icons/butterfly.png"),
          // CircleAvatar(
          //   backgroundColor: Colors.green,
          //   radius: 50,
          //   child: Text("hi"),
          // ),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.lightGreen,
            shadowColor: Colors.red,
            elevation: 15,
            child: const ListTile(
              //tileColor: Colors.grey,
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: AssetImage("assets/icons/butterfly.png"),
                //radius: 50,
                //child: Image.asset("assets/icons/butterfly.png"),
              ),
              //leading: Image.asset("assets/icons/profile.png"),
              title: Text("Ann"),
              subtitle: Text("9895975623"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.message, color: Colors.green,),
                  SizedBox(width: 10,),
                  Icon(Icons.call, color: Colors.green,),
                ],
              ),
            ),
          ),
          ListTile(
              leading: Image.asset("assets/icons/flower.png"),
              title: const Text("Bella"),
              subtitle: const Wrap(children: [Icon(Icons.done_all, color: Colors.blue,),Text("Hi")],),//(child: Text("5276481236")),
              trailing: const Column(
                children: [
                  Text("12:48PM"),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                  )
                  // Icon(Icons.message, color: Colors.green,),
                  // Icon(Icons.call, color: Colors.green,),
                ],
              )
          ),
          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: const Text("Charlie"),
            subtitle: const Text("9895975623"),
            trailing: const Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flower.png"),
            title: const Text("Denny"),
            subtitle: const Text("9895975623"),
            trailing: const Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/bird.png"),
            title: Text("Emily"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flower.png"),
            title: Text("Freddy"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Ginny"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flower.png"),
            title: Text("Hari"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/bird.png"),
            title: Text("Diya"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flower.png"),
            title: Text("Rachel"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Ann"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flower.png"),
            title: Text("Ann"),
            subtitle: Text("9895975623"),
            trailing: Icon(Icons.call, color: Colors.green,),
          ),
        ],
      ),
    );
  }
}