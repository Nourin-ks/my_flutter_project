import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Staggered_Gridview1(),));
}
class Staggered_Gridview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Staggered_gridview"),),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic1.jpg"),
                          fit: BoxFit.fill)
                  ))
          ),

          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic1.jpg"),
                          fit: BoxFit.fill)
                  ))
          ),

          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic1.jpg"),
                          fit: BoxFit.fill)
                  ))
          ),

          // StaggeredGridTile.count(crossAxisCellCount: 2,
          //    mainAxisCellCount: 2,
          //     child: Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage("assets/images/logo.jpg"),
          //     fit: BoxFit.fill)
          // ))
          // )

        ],),
    );
  }
}