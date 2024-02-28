import 'package:flutter/material.dart';

import '../models/shoes.dart';


class Detailspage extends StatelessWidget {
  Shoes item;

  int index = 0;

  Detailspage({required this.item});

  @override
  Widget build(
      BuildContext context,
      ) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(item.imageurl), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.rate,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Center(child: Text('5')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Center(child: Text('6')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Center(child: Text('7')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Center(child: Text('8')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Center(child: Text('9')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 13,
              endIndent: 15,
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The Details',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Icon(Icons.arrow_upward_sharp)
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.description),
            ),
            Divider(
              thickness: 1,
              indent: 13,
              endIndent: 15,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('size&fit',style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_downward_rounded)
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 13,
              endIndent: 15,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('compositon&care',style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_downward_rounded)
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 13,
              endIndent: 15,
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,),
                        onPressed: (){}, child: Text('Add to bag',style: TextStyle(color: Colors.white),)),
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                        onPressed: (){}, child: Text('Buy now',style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ],

        ),
      ),

    );
  }
}