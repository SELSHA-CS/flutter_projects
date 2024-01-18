import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Music2(),
    ),
  );
}

class Music2 extends StatefulWidget {

  @override
  State<Music2> createState() => _Music2State();
}

class _Music2State extends State<Music2> {

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

  var scards1 = [
    "assets/images/p11.jpg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpg",
    "assets/images/p4.jpg",
    "assets/images/p5.jpg",
    "assets/images/p6.jpg",
    "assets/images/p71.jpg",
    "assets/images/p8.jpg",
  ];

  var titles = [
    "Ghost of you",
    "Lover",
    "Dusk Till Dawn",
    "People",
    "Yes to Heaven",
    "Rare",
    "Until i Found You",
    "Daylight",
  ];

  var names = [
    "Justin Beiber",
    "Taylor Swift",
    "Zayn",
    "Libianca",
    "Lan Del Roy",
    "Selena Gomez",
    "Stephen Sanchez",
    "David Kushner",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        title: Center(child: Text("Musify.", style: TextStyle(
          color: Colors.pink[200],
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),)),
        bottom: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 28, 28),
          title: Text("Suggested Playlists", style: TextStyle(
            color: Colors.pink[200],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 12,
                ),
                children: List.generate(scards.length, (index) => Card(
                  color: const Color.fromARGB(255, 29, 28, 28),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(scards[index])),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("Recommended For You", style: TextStyle(
                  color: Colors.pink[200],
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),)),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView(
                children: List.generate(scards1.length, (index) => ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(scards1[index])),
                  title: Text(titles[index], style: TextStyle(color: Colors.pink[200]),),
                  subtitle: Text(names[index], style: TextStyle(color: Colors.white),),
                  trailing: SizedBox(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star_border, color: Colors.pink[200],),
                        Icon(Icons.download_outlined, color: Colors.pink[200],),
                      ],
                    ),
                  )
                )
                ),
              ),
            )
          ],
        ),
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
        BottomNavigationBarItem(icon: Icon(Icons.playlist_add_check_sharp, color: Colors.pink[200],), label: "Playlist", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz, color: Colors.pink[200],), label: "Settings", backgroundColor: const Color.fromARGB(255, 29, 28, 28),),
      ]),
    );
  }
}