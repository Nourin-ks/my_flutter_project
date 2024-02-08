import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Slivers_new(),));
}

class Slivers_new extends StatelessWidget {
  const Slivers_new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: false,
                title: const Text("SliverExample"),
                bottom: AppBar(
                  title: Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,

                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "search here",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)
                      ),
                    ),
                  ),
                ),
              ),

              SliverList(
                 delegate: SliverChildBuilderDelegate((context, index) => Card(
                   child: ListTile(
                     leading: Image.asset("assets/icons/mango.png"),
                     title: Text("mango"),
                     trailing: Icon(Icons.shopping_cart),
                   ),
                 ),
                 childCount: 15
                 )),

              SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) => Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/icons/apple.png", height: 400, width: 200,),
                        Text("Apple", style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold),),
                        Text("\$200/kg")
                      ],
                    ),
                  ),
                  childCount: 10),
                  gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2)),

              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.black,
                  child: GridView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                      itemBuilder: (context, index){
                        return Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(child: Image.asset("assets/icons/profile.png")),
                              Text("Login", style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold),),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          )),
    );
  }
}
