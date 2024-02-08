import 'package:flutter/material.dart';
import 'package:my_flutter_project/passing%20data%20btwn%20screens%20example/using_navigator/dummy_data.dart';

class Details_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    ///to read value from previous page

    final product = products.firstWhere((element) => element['id'] == productId);
    ///fetch that single map (or product) corresponding to the above id

    return Scaffold(
      appBar: AppBar(title: Text("Product Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.redAccent),),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height:350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(product['image']))
            ),
          ),
          Text(
            product['name'],
            style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),

          Text(
            product['description'],
            style: TextStyle(fontSize: 20, color: Colors.black, ),),

          Text(
            '${product['price']}',
            style: TextStyle(fontSize: 18, color: Colors.black, ),),

          Text(
            '${product['rating']}',
            style: TextStyle(fontSize: 18, color: Colors.black, ),),

        ],
      ),
    );
  }
}
