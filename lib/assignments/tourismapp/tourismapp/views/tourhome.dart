import 'package:flutter/material.dart';
import 'package:my_flutter_project/assignments/tourismapp/tourismapp/views/pagedetails.dart';

import '../model/stackmode.dart';



class Tourhome extends StatelessWidget {
  Tourhome({super.key});

  List<Modelstack> items = [
    Modelstack(
        image: 'assets/tourism/furious.jpg',
        toptext: '1700',
        bottomtext: 'furious place'),
    Modelstack(
        image: 'assets/tourism/luxury.jpg',
        toptext: '1800',
        bottomtext: 'luxury place'),
    Modelstack(
        image: 'assets/tourism/favorite.jpg',
        toptext: '1300',
        bottomtext: 'favorite place'),
    Modelstack(
        image: 'assets/tourism/nature.jpg',
        toptext: '1700',
        bottomtext: 'nature look'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text('Gofast'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide())),
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular places',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('View all')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: GridView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 900,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(items[index].image),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              top: 15,
                              left: 15,
                              child: Container(
                                width: 50,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(items[index].toptext)),
                              )),
                          Positioned(
                              bottom: 10,
                              left: 15,
                              child: Text(
                                items[index].bottomtext,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                height: 40,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(0)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Tourplacedetails()));
                  },
                  child: Center(
                    child: Text(
                      'Explore now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
