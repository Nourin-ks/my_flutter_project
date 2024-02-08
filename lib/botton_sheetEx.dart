import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: BottonSheetEx(),));
}
class BottonSheetEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Botton Sheet"),),
      body: Center(
        child: GestureDetector(
          onTap: (){
            showSheet(context);
          },
          child: Image.asset("assets/images/pic7.jpg"),
        ),
      ),
    );
  }

  void showSheet(BuildContext context){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [ListTile(
            leading: Icon(Icons.share),
            trailing: Text("Share"),),

            ListTile(
              leading: Icon(Icons.copy),
              trailing: Text("Copy"),)],
        ));
  }
}
