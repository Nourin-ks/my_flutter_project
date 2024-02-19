import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPlayer1(),
    //theme: ThemeData(fontFamily: 'PlayfairDisplay'),
  ));
}

class MusicPlayer1 extends StatefulWidget {
  @override
  State<MusicPlayer1> createState() => _MusicPlayerUIState();
}

class _MusicPlayerUIState extends State<MusicPlayer1> {
  var index = 0;

  List music=[
    'assets/music/pop.jpeg',
    'assets/music/lofi.jpg',
    'assets/music/carmusic.jpg',
    'assets/music/tiktok.jpg',
    'assets/music/top50.jpeg',
    'assets/music/mike.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                "Playlist",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 184, 73, 110)),
              ),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                //  margin: EdgeInsets.only(bottom: 7),
                color: Colors.black,
                width: double.infinity,
                height: 50,
                child: searchbar(),
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.only(bottom: 25)),
          SliverGrid(

              delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                      (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(music[index]))),
                  )),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
              ))
        ],
      ),
      bottomNavigationBar: bottomnavbar(),
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
        selectedItemColor: Color.fromARGB(255, 168, 77, 107),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.black,
        items: [
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

  searchbar() {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: const Color.fromARGB(255, 184, 84, 117))
          ),
          suffixIcon: Icon(
            Icons.search,
            color: const Color.fromARGB(255, 177, 85, 115),
          ),
          labelText: 'Search..',
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 192, 95, 127)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100))),
    );
  }
}