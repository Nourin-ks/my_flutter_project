import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_widget extends StatelessWidget {
  final ImageProvider myimage;
  final String name;
  final String price;
  VoidCallback? onClick;  // for ontap button
  Color? bgcolor;

  Product_widget(
      {super.key,
        required this.myimage,
        required this.name,
        required this.price,
        this.onClick,
        this.bgcolor
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Card(
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: myimage,
              width: 100,
              height: 100,),

            Text(
              name,
              style: GoogleFonts.pacifico(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),

            Text(price, style: GoogleFonts.pacifico(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border, color: Colors.white,),
                    label: Text("Wishlist", style: TextStyle(color: Colors.black),),
                  ),
                ),

                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: (){},
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    label: Text("Wishlist", style: TextStyle(color: Colors.black),),
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
