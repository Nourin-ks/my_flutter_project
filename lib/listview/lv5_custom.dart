import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listview5(),));
}

class Listview5 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview Custom"),
      ),
      body: ListView.custom(
          scrollDirection: Axis.horizontal,
          childrenDelegate:
          SliverChildBuilderDelegate(childCount: 15,
                  (context, index) => Card(
                child: Icon(Icons.favorite),
                color: Colors.pinkAccent,
              ))
      ),

      // ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(
      //   15,
      //    (index) => c)))
    );
  }
}