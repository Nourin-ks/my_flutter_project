import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Asignmentlv2(),));
}
class Asignmentlv2 extends StatelessWidget {
  var name=["Apple",
    "Mango",
    "Banana",
    "Grapes",
    "Water melon",
    "kiwi",
    "Orange",
  ];

  dynamic name1=["Unit: Kg \nPrice: \$20",
    "Unit: Kg \nPrice: \$30",
    "Unit: Doz \nPrice: \$10",
    "Unit: Doz \nPrice: \$8",
    "Unit: Kg \nPrice: \$25",
    "Unit: Pc \nPrice: \$40",
    "Unit: Doz \nPrice: \$15",
  ];




  var images=["assets/icons/apple.png",
    "assets/icons/mango.png",
    "assets/icons/banana.png",
    "assets/icons/grapes.png",
    "assets/icons/watermelon.png",
    "assets/icons/kiwi.png",
    "assets/icons/orange.png",
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25 ,),),

      body: ListView(
        children: List.generate(7,
                (index) => Card(

              child: ListTile(
                leading: Image.asset(images[index], height: 200,),

                title: Text("Name: ${name[index]}", ),

                subtitle: Text(name1[index], ),
                trailing: Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {  },
                      icon: Icon(Icons.shopping_cart, color: Colors.white,),
                      label: Text("Add To Cart", style: TextStyle(color: Colors.white),),
                    )
                ),



                tileColor: Colors.grey,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),





              ),
            )),
      ),
    );
  }
}