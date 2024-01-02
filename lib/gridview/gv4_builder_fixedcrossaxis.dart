import 'package:flutter/material.dart';
import 'package:my_flutter_project/myWidget.dart';

void main(){
  runApp(MaterialApp(home: Gridview4(),));
}
class Gridview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Gridview- Builder_fixedCrossAxis_extent"),),
      body: GridView.builder( itemCount: 28,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context,index)=> MyWidget(label: Text("hello"),
              onpressed: () {},
              bgcolor: Colors.cyan,
            image: Image.asset("assets/images/pic1.jpg"),
          )
          //     Container(
          //   height: 50,
          //   width: 50,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(image: AssetImage("assets/images/logo.jpg"),
          //           fit: BoxFit.fill)
          //
          //   ),
          // )
      ),
    );
  }
}