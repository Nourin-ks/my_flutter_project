import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: ClipperEx(),
  ));
}

class ClipperEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: .8,
              heightFactor: .5,
              child: Image.asset("assets/images/pic4.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset("assets/images/pic5.jpg"),
            ),

          ),
          ClipOval(
            child: Image.asset("assets/images/pic3.jpg"),
          ),

          ClipPath(
            clipper: MessageClipper(),
            child: Container(color: Colors.red,
              height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              clipper: MovieTicketClipper(),
              child:  Container(color: Colors.green,
                height: 200,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipPath(
              clipper: MovieTicketBothSidesClipper(),
              child:  Container(color: Colors.orange,
                height: 200,),
            ),
          ),
          ClipPath(
            clipper: StarClipper(5),
            child: Image.asset("assets/images/pic3.jpg"),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Image.asset("assets/images/pic1.jpg"),
          )
        ],
      ),
    );
  }
}