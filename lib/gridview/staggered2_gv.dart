import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Staggered_Gridview2(),));
}
class Staggered_Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Staggered_Gridview_extent"),),
      body: StaggeredGrid.extent(
        maxCrossAxisExtent: 100,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic2.jpg"),
                          fit: BoxFit.fill)
                  ))),

          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic2.jpg"),
                          fit: BoxFit.fill)
                  ))),

          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic2.jpg"),
                          fit: BoxFit.fill)
                  ))),
        ],),
    );
  }
}