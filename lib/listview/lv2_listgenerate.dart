import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listview2(),));
}
class Listview2 extends StatelessWidget {
  var name=["anu",
    "ann",
    "Rinu",
    "sanu",
    "saan",
    "sher",
    "cheppz",
    "nourin",
    "salbana",
    "athullya",
    "adila",
    "gopi",
    "aysh",
    "anju"
  ];

  var images=["assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
    "assets/icons/profile.png",
  ];
  var icons=[
    Icon(Icons.favorite, color: Colors.red,),
    Icon(Icons.favorite, color: Colors.black,),
    Icon(Icons.favorite, color: Colors.blue,),
    Icon(Icons.favorite, color: Colors.green,),
    Icon(Icons.favorite, color: Colors.grey,),
    Icon(Icons.favorite, color: Colors.yellow,),
    Icon(Icons.favorite, color: Colors.purple,),
    Icon(Icons.favorite, color: Colors.brown,),
    Icon(Icons.favorite, color: Colors.red,),
    Icon(Icons.favorite, color: Colors.blue,),
    Icon(Icons.favorite, color: Colors.cyan,),
    Icon(Icons.favorite, color: Colors.lightBlue,),
    Icon(Icons.favorite, color: Colors.pink,),
    Icon(Icons.favorite, color: Colors.orange,),
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
    // Icons.done_all,
    // Icons.message,
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Listview listGenerate"),),
      body: ListView(
        children: List.generate(14,
                (index) => Card(
              //child: Image.asset("assets/icons/birds.png", height: 65, width: 65,),
              //child: Text(name[index]),
              child: ListTile(
                leading: Image.asset(images[index]),
                title: Text(name[index]),
                subtitle: Wrap(children:[icons[index],icons[index]] ),
                trailing: CircleAvatar(backgroundColor: Colors.green,),
              ),
            )),
      ),
    );
  }
}