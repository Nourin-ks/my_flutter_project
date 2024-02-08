import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Anim_navigatn(),));
}

class Anim_navigatn extends StatelessWidget {
  const Anim_navigatn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("MainPage"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(seconds: 1),
                    pageBuilder: (context, anim1, anim2){
                      return Second_page_Animation();
                      },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    final tween = Tween(begin: begin, end: end);
                    final offsetAnimation = animation.drive(tween);
                    final curvedAnimation = CurvedAnimation(
                      parent: animation,
                      //curve: Curves.slowMiddle
                      curve: Curves.fastEaseInToSlowEaseOut
                    );
                    return SlideTransition(
                      position: tween.animate(curvedAnimation),
                      child: child,);
            }));
            },
              child: const Text("Slide transition")),
          const SizedBox(height: 30,
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a1, a2){
              return Second_page_Animation();
            },
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (context, an1, an2, child){
                  return FadeTransition(opacity: an1, child: child,);
                }
            ));
          }, child: const Text("Slide transition")),
          const SizedBox(height: 30,
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a1, a2){
              return Second_page_Animation();
            },
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (context, ani1, ani2, child){
                  return FadeTransition(opacity: ani1, child: child,);
                }
            ));
          }, child: const Text("Slide transition")),
          const SizedBox(height: 30,
          ),
        ],
      ),
    );
  }
}

class Second_page_Animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Anim_navigatn()));
        }, child: Text("GO BACK")),

      ),
    );
  }
}
