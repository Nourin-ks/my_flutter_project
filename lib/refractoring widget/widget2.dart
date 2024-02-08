import 'package:flutter/material.dart';

class Rw_widget2 extends StatelessWidget {
  final ImageProvider image2;
  final String name2;
  final String price2;
  Color? bgcolor2;

  Rw_widget2({
    super.key,
    required this.name2,
    required this.image2,
    required this.price2,
    this.bgcolor2});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

      ),
    );
  }
}
