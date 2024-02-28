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
            height:200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(product['image']))
            ),
          ),

          SizedBox(height: 10,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),

              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(
                    product['name'],
                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 20,),

                  Text(
                    product['description'],
                    style: TextStyle(fontSize: 20, color: Colors.black, ),),

                  Text(
                    '${product['price']}',
                    style: TextStyle(fontSize: 18, color: Colors.black, ),),

                  Text(
                    '${product['rating']}',
                    style: TextStyle(fontSize: 18, color: Colors.black, ),),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200]),
                    onPressed: (){
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context)=>Adopt()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("ADOPT ME",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.brown[800]),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
