import 'package:flutter/material.dart';
import 'package:my_flutter_project/grp_assgnmnt/emergency_assistance/bottm.dart';
import 'package:my_flutter_project/grp_assgnmnt/emergency_assistance/page2.dart';
void main(){
  runApp(MaterialApp(home: Emergency_page1(),));
}
class Emergency_page1 extends StatelessWidget {
  const Emergency_page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/grp1.jpeg"),
              fit: BoxFit.cover),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(100, 100)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("    EMERGENCY\nASSISTANCE FOR\n   CUSTOMERS",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.red),),
          SizedBox(
            height: 30,
          ),

          Text("Lorem ipsum dolor sit amet, consectetur\n     adipiscing elit, sed do eiusmod",
            style: TextStyle(fontSize: 17, color: Colors.grey),),

          SizedBox(
            height: 30,
          ),

          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red),
                onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>Bottom()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Lets get started", 
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),),
                    SizedBox(
                      width: 10,
                    ),
                    
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,)
                    
                  ],
                )),
          )
        ],
      ),
    );
  }
}
