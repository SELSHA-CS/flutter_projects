import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Music1(),
    ),
  );
}
class Music1 extends StatefulWidget {
  @override
  State<Music1> createState() => _Music1State();
}
class _Music1State extends State<Music1> {
  var index = 0;
  var scards = [
    "assets/images/s1.jpg",
    "assets/images/s2.jpg",
    "assets/images/s3.jpg",
    "assets/images/s4.jpg",
    "assets/images/s5.jpg",
    "assets/images/s6.jpg",
    "assets/images/s7.jpg",
    "assets/images/s8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 28, 28),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 29, 28, 28),
            title: Center(
              child: SizedBox(
                height: 50,
                child: Text("Playlists", style: TextStyle(
                  color: Colors.pink[200],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            bottom: AppBar(
              backgroundColor: const Color.fromARGB(255, 29, 28, 28),
              title: SizedBox(
                height: 50,
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.pink[200], fontSize: 15),
                      suffixIcon: Icon(Icons.search, color: Colors.pink[200]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ), 
            itemBuilder: ((context, index) => Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(scards[index]),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            )),
            itemCount: scards.length,
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.pink[200],
        onTap: (tapindex){
          setState(() {
            index = tapindex;
          });
        },
        currentIndex: index,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.pink[200],), label: "Home", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
        BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.pink[200],), label: "Search", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
        BottomNavigationBarItem(icon: Icon(Icons.playlist_add_check_outlined, color: Colors.pink[200],), label: "Playlist", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz, color: Colors.pink[200],), label: "Settings", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
      ]),
    );
  }
}