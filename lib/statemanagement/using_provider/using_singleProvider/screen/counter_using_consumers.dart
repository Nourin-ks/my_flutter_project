
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../controller/counter_provider.dart';

void main(){
  runApp(MaterialApp(home: ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child:  IncreCount(),
  ),));
}

class IncreCount extends StatelessWidget {
  const IncreCount({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
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
