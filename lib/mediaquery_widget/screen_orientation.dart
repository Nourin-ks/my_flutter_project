
import 'package:flutter/material.dart';
import 'package:my_flutter_project/mediaquery_widget/large_screen.dart';
import 'package:my_flutter_project/mediaquery_widget/small_screen.dart';

// void main(){
//   runApp(MaterialApp(
//     home: Screen_orientn(),
//     // routes: {
//     //   "loginpage":(context)=> LoginPage(),
//     // },
//   ));
//}
     /// material app--> common theme which support on everything, eg:- andriod, ios, macos etc
    /// cuppertino--> only work only on ios and macos
 void main(){
   runApp(MyPage());
 }

class MyPage  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /// fetch the theme of device
    bool isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;


    return MaterialApp(
      theme: isDarkTheme ? ThemeData.light() : ThemeData.dark(),
      home: Screen_orientn(),
    );
  }

}


class Screen_orientn extends StatelessWidget {
  var orientation,height,width;

  var isLargeScreen;

  @override
  Widget build(BuildContext context) {  ///build--> to build widget tree
    orientation   = MediaQuery.of(context).orientation;
    height        = MediaQuery.of(context).size.height;
    width         = MediaQuery.of(context).size.width;
    isLargeScreen = width < 600;

    return Scaffold(
      appBar: AppBar(
        title: Text("screen orientation",),
        backgroundColor: Colors.redAccent,),

      body: isLargeScreen == true? LargeScreen() : SmallScreen(),

      //body: orientation == Orientation.portrait
      //   body: isLargeScreen == true       ///ternary operator
      //     ?Container(
      //         color: Colors.blueAccent,
      //         height: height/2,
      //         width: width/2,
      //         )
      //     :Container(
      //         color: Colors.black,
      //         height: height/2,
      //         width: width/4,

        // child: GridView.extent(maxCrossAxisExtent: 100,
        //   mainAxisSpacing: 25,
        //   crossAxisSpacing: 25,
        //   children: List.generate(10, (index) =>Container(
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/images/logo.jpg"),
        //             fit: BoxFit.fill)
        //     ),
        //   )),),
     // )
    );
  }
}
