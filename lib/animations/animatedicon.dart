import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: Anim_icon(),));
}

class Anim_icon extends StatefulWidget {
  const Anim_icon({super.key});

  @override
  State<Anim_icon> createState() => _Anim_iconState();
}

class _Anim_iconState extends State<Anim_icon> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController= AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animation=
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
  }

  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: () => startanimation(),
          child: AnimatedIcon(
            color: Colors.pinkAccent,
            icon: AnimatedIcons.pause_play,
            //icon: AnimatedIcons.close_menu,
            //icon: AnimatedIcons.add_event,
            //icon: AnimatedIcons.arrow_menu,
            progress: animation,
            size: 70,
          ),
        ),
      ),
    );
  }

 void startanimation() {
    if(animationController.isDismissed){
      animationController.forward();
    }else{
      animationController.reverse();
    }
 }
}
