//LIST VIEW
//scrollable

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: Listview1(),
  ));
}


class Listview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Listview"),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(
            width: 25,
          ),

          Icon(Icons.search),
          SizedBox(
            width: 25,),
          PopupMenuButton(itemBuilder: (context){
            return [
              const  PopupMenuItem(child: Text("New group")),
              const  PopupMenuItem(child: Text("New broadcast")),
              const  PopupMenuItem(child: Text("Linked devices")),
              const  PopupMenuItem(child: Text("Settings")),
              const  PopupMenuItem(child: Text("Starred messages")),
            ];
          }),
        ],
      ),

      //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: ListView(
        children: [
          // Text("Customer List"),
          // Image.asset("assets/icons/logo3.png"),
          // Image.asset("assets/icons/logo2.png"),
          // Image.asset("assets/icons/profile.png"),


          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey,
            shadowColor: Colors.green,
            elevation: 15,
            child:ListTile(
              //tileColor: Colors.grey,
                leading: CircleAvatar(backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/images/splsh.jpg"),
                  //radius: 15,
                  //child: Text("hii"),
                ),
                //leading: Image.asset("assets/icons/profile.png"),

                title: Text("Ann"),
                subtitle: Text("9876543210"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.message, color: Colors.black,),
                    SizedBox(width: 15,),
                    Icon(Icons.call, color: Colors.black,),
                  ],
                )
            ),
          ),

          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Rinu"),
            subtitle: Wrap(children: [Icon(Icons.done_all,color: Colors.blue,), Text("hiii...")]),

            trailing:Wrap(children: [Text("yesterday")],),

            // Column(children: [
            //   Text("yesterday"),
            //   CircleAvatar(
            //     radius: 10,
            //     backgroundColor: Colors.green,
            //   )
            // ]
            // ),
          ),

          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Saam"),
            subtitle: Text("9876543210"),
            trailing: Icon(Icons.call, color: Colors.black,),
          ),

          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Anu"),
            subtitle: Text("9876543210"),
            trailing: Icon(Icons.call, color: Colors.black,),
          ),

          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Manu"),
            subtitle: Text("9876543210"),
            trailing: Icon(Icons.call, color: Colors.black,),
          ),

          ListTile(
            leading: Image.asset("assets/icons/profile.png"),
            title: Text("Sanu"),
            subtitle: Text("9876543210"),
            trailing: Icon(Icons.call, color: Colors.black,),
          )

        ],
      ),
    );
  }

}