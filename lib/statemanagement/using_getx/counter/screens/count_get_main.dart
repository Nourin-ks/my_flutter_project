import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/countContrller.dart';


void main(){
  runApp(MaterialApp(home: GetCountMain(),));
}

class GetCountMain extends StatelessWidget {
  const GetCountMain({super.key});

  @override
  Widget build(BuildContext context) {
    // creating an instance of controller
    //inside this widget tree
    final CountCntrl countcontroller = Get.put(CountCntrl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Counter", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Counter using Getx",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Obx(() => Text("Count = ${countcontroller.count}")),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    countcontroller.increment();
                  },

                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add),
                  ),
                ),

                InkWell(
                  onTap: (){
                    countcontroller.decrement();
                  },

                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.minimize),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
