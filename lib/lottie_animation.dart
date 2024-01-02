import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LottieEx(),));
}
class LottieEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Lottie"),),
    body: Center(
      //child: Lottie.network("url"),
      child: Lottie.asset("path"),
      ),
    );
  }
}
