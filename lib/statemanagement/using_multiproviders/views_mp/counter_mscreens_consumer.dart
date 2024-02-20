
import 'package:flutter/material.dart';
import 'package:my_flutter_project/statemanagement/using_multiproviders/controller_mp/themeProvider.dart';
import 'package:my_flutter_project/statemanagement/using_singleProvider/controller/counter_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=> ThemeProvider()),
        ChangeNotifierProvider(create: (context)=> CounterProvider()),
      ],
      child: MyApp1()
      ));

}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider",
      theme: Provider.of<ThemeProvider>(context).darkTheme
          ? ThemeData.dark()
          : ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: IncreCount1(),
      );
  }
}

class IncreCount1 extends StatelessWidget {
  const IncreCount1({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Consumer(builder: (context,ThemeProvider provider, child){
          return  IconButton(onPressed: (){
            provider.switchTheme();
          }, icon: Icon(provider.darkTheme? Icons.dark_mode : Icons.light_mode));
        }),
        backgroundColor: Colors.pink,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Press button to increment value", style: TextStyle(fontSize: 25),
            ),

            Consumer<CounterProvider>(
              builder: (BuildContext context, CounterProvider counterProvider, Widget? child) {
                return Text("Count : ${counterProvider.counter.count}",
                  style: const TextStyle(fontSize: 25),);
              },
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Provider.of<CounterProvider>(context, listen: false).increment();
                  },

                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Provider.of<CounterProvider>(context, listen: false).decrement();
                  },

                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.minimize_rounded),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
