import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Staggered_Gridview3(),));
}
class Staggered_Gridview3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("staggered_gridview3"),),
      body: StaggeredGrid.extent(maxCrossAxisExtent: 200,
        children: [
          StaggeredGridTile.extent(crossAxisCellCount: 4,
              mainAxisExtent: 100,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic3.jpg"),
                          fit: BoxFit.fill)
                  ))),

          StaggeredGridTile.extent(crossAxisCellCount: 2,
              mainAxisExtent: 200,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic3.jpg"),
                          fit: BoxFit.fill)
                  ))),

          StaggeredGridTile.extent(crossAxisCellCount: 1,
              mainAxisExtent: 300,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/pic3.jpg"),
                          fit: BoxFit.fill)
                  ))),
        ],),
    );
  }
}