import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Stack3_atm(),
  ));
}

class Stack3_atm extends StatelessWidget {
  const Stack3_atm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ATM Card"),
        elevation: 5,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPLam1qEyYkyu3H8205rrDQvKJMHrFOfgY7oLxsyHXvQ&s"))),
            ),
            Positioned(
              left: 48,
              top: 20,
              child: Text(
                "VISA platinum",
                style: GoogleFonts.oswald(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 48,
              bottom: 230,
              child: Row(
                children: [
                  const Icon(
                    Icons.nfc,
                    color: Colors.grey,
                    size: 50,
                  ),
                  Transform.rotate(
                      angle: 90 * pi / 180,
                      child: const Icon(
                        Icons.wifi,
                        color: Colors.grey,
                        size: 50,
                      ))
                ],
              ),
            ),
            Positioned(
                bottom: 145,
                left: 44,
                child: Text(
                  "4000  1187  2345  5641",
                  style: GoogleFonts.lobster(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                bottom: 138,
                left: 44,
                child: Text(
                  "4000",
                  style: GoogleFonts.lobster(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              left: 160,
              bottom: 95,
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "GOOD",
                        style: GoogleFonts.scada(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "THRU",
                        style: GoogleFonts.scada(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  SizedBox(width: 8,),
                  Text(
                    "12/20",
                    style: GoogleFonts.lobster(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            Positioned(
              left: 44,
              bottom: 50,
              child: Text(
                "EISHA KHANNA",
                style: GoogleFonts.kalam(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              right: 40,
              bottom: 45,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("VISA",style: GoogleFonts.blackOpsOne(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                  Text("platinum", style: GoogleFonts.raleway(
                      fontSize: 15,
                      color: Colors.white,
                      ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
