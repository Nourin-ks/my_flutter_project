import 'package:flutter/material.dart';
import 'package:my_flutter_project/passing%20data%20btwn%20screens%20example/using_navigator/details_page.dart';

import 'dummy_data.dart';

void main(){
  runApp(MaterialApp(home: Product_main(),
  routes: {
    "Details_page":(context)=>Details_page(),
  },
  ));
}

class Product_main extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Shop me"),
        titleTextStyle: TextStyle(color: Colors.pink, fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: products.map((product) => InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Details_page", arguments: product['id']);
          },
          child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(30),
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(product['image']))
            ),
                )
                ),
                Text(
                  product['name'],
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${product['price']}',
                  style: const TextStyle(fontSize: 15,),
                ),
              ],
            ),
          ),
        )).toList(),),

    );
  }
}
