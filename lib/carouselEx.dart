import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CarouseEx(),));
}
class CarouseEx extends StatelessWidget {
  var img=["assets/images/logo.jpg",
    "assets/images/pic1.jpg",
    "assets/images/pic2.jpg",
    "assets/images/pic3.jpg",
    "assets/images/pic4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Carousel slider"),),
    body: CarouselSlider(
        items: List.generate(
        5, (index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(img[index]),
                fit: BoxFit.fill),
          )
      //color: Colors.primaries[index % Colors.primaries.length],
    )),
        options: CarouselOptions(
            viewportFraction: 0.8,
            initialPage: 1,
            autoPlayInterval: Duration(seconds: 2),
            enableInfiniteScroll: true,
            autoPlay: true,
            pauseAutoPlayOnTouch: true
        )),
    );
  }
}
