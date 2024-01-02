import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: GradientEx(),));
}
class GradientEx extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(title: Text("Gradient"),),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage
                (image: AssetImage("assets/images/bg.jpg")),
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.blue,
                Colors.green,
                Colors.yellow
              ],begin: Alignment.bottomRight,
                  end: Alignment.topLeft
              )
          ),
          child: Center(
            child: Column(children: [Image.asset("assets/icons/birds.png"),
              Text("my application",
                style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),)
            ]),


          ),
        )
    );

  }
}