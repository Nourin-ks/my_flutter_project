import 'package:flutter/material.dart';
import 'package:my_flutter_project/refractoring%20widget/rw_mywidget.dart';

void main(){
  runApp(MaterialApp(home: RW_home(),));
}

class RW_home extends StatelessWidget {
  const RW_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refactoring Widget"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),

          itemBuilder: (context, index)=> Product_widget(
            myimage: AssetImage("assets/icons/apple.png"),
            name: "Apple",
            price: "\$ 100/kg",
            bgcolor: Colors.black,
            onClick: (){},
          )),

    );
  }
}
