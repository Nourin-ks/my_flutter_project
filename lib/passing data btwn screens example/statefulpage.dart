import 'package:flutter/material.dart';

class Screen_stateful extends StatefulWidget {
  String? name;
  String? loca;

  Screen_stateful({super.key,  this.name, this.loca});

  @override
  State<Screen_stateful> createState() => _Screen_statefulState();
}

class _Screen_statefulState extends State<Screen_stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${widget.name} ${widget.loca}"),  //widget --> getter property
      ),
    );
  }
}
