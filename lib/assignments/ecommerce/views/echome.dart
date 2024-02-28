import 'package:flutter/material.dart';

import '../models/shoes.dart';
import 'details.dart';

class Echome extends StatelessWidget {
  Echome({super.key});

  List<Shoes> items = [
    Shoes(
        imageurl: 'assets/nike/nike6.jpg',
        title: 'Nike Dunk Low Retro',
        description: 'Created for the hardwood ',
        rate: '\$250'),
    Shoes(
        imageurl: 'assets/nike/nike2.jpg',
        title: 'Air Jordan 1 Low',
        description: 'Always in, always fresh. ',
        rate: '\$170'),
    Shoes(
        imageurl: 'assets/nike/nike3.jpg',
        title: 'Nike Dunk Low Retro SE',
        description: 'The 80s b-ball icon returns with classic colours',
        rate: '\$250'),
    Shoes(
        imageurl: 'assets/nike/nike4.jpg',
        title: 'Nike Air Force 1 07',
        description: 'Classic, crisp, comfortable',
        rate: '\$350'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'All shoes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
              bottom: TabBar(
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(color: Colors.grey),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Text(
                      'All',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Lifestyle',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Jordan',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Running',
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //  mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio:
                            (MediaQuery.of(context).size.width / 2.9) /
                                (MediaQuery.of(context).size.height / 3.6),
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Detailspage(
                                      item: Shoes(
                                          imageurl: items[index].imageurl,
                                          title: items[index].title,
                                          description:
                                          items[index].description,
                                          rate: items[index].rate)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                child: Container(
                                  width: 300,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              items[index].imageurl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Text(items[index].title),
                              SizedBox(
                                height: 10,
                              ),
                              Text(items[index].description),
                              SizedBox(
                                height: 10,
                              ),
                              Text(items[index].rate)
                            ],
                          ),
                        ))),
              ),
            )));
  }
}