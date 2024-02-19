import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musicplayerui2(),
  ));
}

class Musicplayerui2 extends StatefulWidget {
  const Musicplayerui2({super.key});

  @override
  State<Musicplayerui2> createState() => _Musicplayerui2State();
}

class _Musicplayerui2State extends State<Musicplayerui2> {

  var index = 0;
  List music = [
    'assets/music/carmusic.jpg',
    'assets/music/lofi.jpg',
    'assets/music/mike.jpg',
    'assets/music/pop.jpeg',
    'assets/music/tiktok.jpg',
    'assets/music/top50.jpeg',
  ];

  List song = [
    'Jai Ho',
    'Jashn-E-Bahaaraa',
    'Barso Re',
    'Kun Faya Kun',
    'Muqabla',
    'Raanjhanaa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Musify",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 184, 73, 110)),
        ),
      ),
      bottomNavigationBar: bottomnavbar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Suggested playlist",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 184, 73, 110)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                              music.length,
                                  (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  //height: 300,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(music[index]))),
                                ),
                              ))),
                    ),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "recommended for you",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 184, 73, 110)),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
                  children: List.generate(
                      song.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/music/arrahman.jpg'))),
                          ),
                          title: const Text(
                            "A. R. Rahman",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                    255, 184, 73, 110)),
                          ),
                          subtitle: Text(song[index]),
                          trailing: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star_border),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.download)
                            ],
                          ),
                        ),
                      ))))
        ],
      ),
    );
  }

  bottomnavbar() {
    return BottomNavigationBar(
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        currentIndex: index,
        selectedItemColor: const Color.fromARGB(255, 168, 77, 107),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                //  color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                size: 0,
              ),
              label: 'Playlist'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_outlined,
                //  color: Colors.white,
              ),
              label: ''),
        ]);
  }
}