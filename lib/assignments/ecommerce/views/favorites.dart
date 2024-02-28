import 'package:flutter/material.dart';

import '../models/shoes.dart';


class Favoritepage extends StatelessWidget {
  List<Shoes> items = [
    Shoes(
        imageurl: 'assets/nike/nike5.jpg',
        title: 'Nike Gamma Force',
        description: 'Layers upon layers of dimensional style',
        rate: '\$150'),
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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('favorite',style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //  mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        childAspectRatio: (MediaQuery.of(context).size.width/2.9)/(MediaQuery.of(context).size.height/3.6),
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: AssetImage(items[index].imageurl),fit: BoxFit.cover)),

                          ),
                        ),
                        Text(items[index].title),
                        SizedBox(height: 10,),
                        Text(items[index].description),
                        SizedBox(height: 10,),
                        Text(items[index].rate)
                      ],
                    ))),
          ),
        )
    );
  }
}