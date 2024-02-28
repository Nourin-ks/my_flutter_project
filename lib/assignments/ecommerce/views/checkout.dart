import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('jsadka007\nsjsaSHDKkajhaa')
                    ],
                  ),
                  Icon(Icons.arrow_right_alt_rounded)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Delivery method ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('jsadka007\nsjsaSHDKkajhaa')
                    ],
                  ),
                  Icon(Icons.arrow_right_alt_rounded)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('payment ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('jsad\nsjsaSHDK')
                    ],

                  ),
                  Icon(Icons.arrow_right_alt_rounded)
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(suffixIcon: Icon(Icons.tiktok),
                      border: OutlineInputBorder(),hintText: 'promo code '),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('subtotal'), Text('\$150')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('delivery'), Text('\$0')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('taxes'), Text('\$5')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('total'), Text('\$155')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}