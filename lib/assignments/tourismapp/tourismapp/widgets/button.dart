import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  VoidCallback ontap;
  String title;
  IconData icon;
  Color colors;
  Buttonwidget({super.key,required this.ontap,required this.title,required this.icon,required this.colors});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        onPressed: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(color: Colors.white),),
            Icon(icon,color: Colors.white)
          ],
        ),
        style: ElevatedButton.styleFrom(backgroundColor:colors),
      ),
    );
  }
}