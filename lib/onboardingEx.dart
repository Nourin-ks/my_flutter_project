import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_flutter_project/carouselEx.dart';
import 'package:my_flutter_project/screens/home.dart';


void main(){
  runApp(MaterialApp(home: OnboardingEx(),
  debugShowCheckedModeBanner: false,));
}
class OnboardingEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    PageDecoration page_decor=PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.black),

      bodyTextStyle: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.black),

      titlePadding: EdgeInsets.all(20),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.yellow,Colors.pink, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)
      )
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: page_decor,

          ///should have either title or titleWidget
          ///must have either body or bodyWidget
          //title: "Page 1",
          //body: "helloooo",
          //image: Image.asset("assets/icons/logo3.png")
          titleWidget: Image.asset("assets/icons/logo3.png"),
          body: "Order Food"
        ),

        PageViewModel(
          decoration: page_decor,
            // title: "Page 2",
            // body: "helloooo",
            // image: Image.asset("assets/icons/logo1.png")
            titleWidget: Image.asset("assets/icons/logo1.png"),
            body: "Fast Delivery"
        ),

        PageViewModel(
          decoration: page_decor,
            // title: "Page 3",
            // body: "helloooo",
            // image: Image.asset("assets/icons/logo2.png")
            titleWidget: Image.asset("assets/icons/logo2.png"),
            body: "Good Service",
        )
      ],
      next: const Text("Next"),
      showSkipButton: true,
      skip: const Text("Skip"),
      done: const Text("Continue"),

      onDone: ()=> Navigator.of(context)
          .push(MaterialPageRoute(builder: (context)=> Home())),

      onSkip: ()=> Navigator.of(context)
          .push(MaterialPageRoute(builder: (context)=> CarouseEx())),

      dotsDecorator: DotsDecorator(
        size: Size(20, 20),
        activeSize: Size(40, 20),
        color: Colors.black,
        activeColor: Colors.redAccent,
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12))
      ),
    );
  }
}
