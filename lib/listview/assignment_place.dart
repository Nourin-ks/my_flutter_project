import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Asignmentlv2(),));
}
class Asignmentlv2 extends StatelessWidget {
  var name=["Delhi",
    "Finland",
    "London",
    "Vancouver",
    "New york",
  ];

  var name1=["India \npopulation: 32.9 mill",
    "Europe \npopulation: 5.54 mill",
    "UK \npopulation: 8.8 mill",
    "Canada \npopulation: 2.6 mill",
    "USA \npopulation: 19.6 mill"];


  var images=["assets/images/delhi.jpg",
    "assets/images/finland.jpg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/new_york.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Cities Around World"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25 ,),),

      body: ListView(
        children: List.generate(5,
                (index) => Card(

              child: ListTile(
                leading: Image.asset(images[index], height: 400, fit: BoxFit.fitHeight,),

                title: Text(name[index], style: GoogleFonts.archivoBlack(
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),),

                subtitle: Text(name1[index], style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15
                ),),

                tileColor: Colors.orangeAccent,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                horizontalTitleGap: 35,




              ),
            )),
      ),
    );
  }
}