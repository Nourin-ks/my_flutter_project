import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'dbFunction.dart';

void main(){
  runApp(MaterialApp(home: MyToDo(),));
}

class MyToDo extends StatefulWidget {
  const MyToDo({super.key});

  @override
  State<MyToDo> createState() => _MyToDoState();
}

class _MyToDoState extends State<MyToDo> {
  final ctitle = TextEditingController();
  final ccontent = TextEditingController();
  bool isLoading = true;
  var tasks = [];   // to store task from sqflite returned by readtask method

  @override
  void initState(){
    loadTask();
    super.initState();
  }

  Future<void> loadTask() async{
    final tsk = await SQLHelper.readTask();
    setState(() {
      tasks = tsk;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ToDo"),backgroundColor: Colors.yellowAccent,),
      body: isLoading? Center(child: Lottie.asset("assets/animation/animatn.json")):Column(
        children: [
          Padding(padding: EdgeInsets.all(12.0),
          child: Text("MY TASK",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.yellowAccent),),
          ),

          Expanded(
              child: GridView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index){
                return Card(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.white,
                        size: 20,
                      ),

                      Text(
                        tasks[index]['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),

                      SizedBox(height: 10,),

                      Text(
                          tasks[index]['content'],
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,)
                      ),

                      Wrap(
                        children: [
                          IconButton(
                              onPressed: ()=> showsheet(tasks[index]['id']),
                              icon: Icon(Icons.edit)),
                          IconButton(onPressed: () async{
                            await SQLHelper.deleteTask(tasks[index]['id']);
                            loadTask();
                          }, icon: Icon(Icons.delete))
                        ],
                      )
                    ],
                  ),
                );
              }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)
          )

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.yellowAccent,
        onPressed: () => showsheet(null), 
        label: const Text("Create Task"),),
    );
  }

  void showsheet(int? id) async{      //when we click on floating actn button id = null
    if(id!= null){
      final existingData = tasks.firstWhere((element) => element['id'] == id);
      ctitle.text = existingData['title'];
      ccontent.text = existingData['content'];
    }
    showModalBottomSheet(
        context: context, 
        isScrollControlled: true,
        builder: (context){
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: ctitle,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Title",
                  ),
                ),
                
                const SizedBox(height: 15,),

                TextField(
                  controller: ccontent,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Content",
                  ),
                ),
                
                ElevatedButton(
                    onPressed: (){
                      if(id == null){
                        createTask();
                        ctitle.text = "";
                        ccontent.text = "";
                      }
                      if(id != null){
                       updateTask(id, ctitle.text, ccontent.text);
                       ctitle.text = "";
                       ccontent.text = "";
                       Navigator.of(context).pop();
                      }
                    },
                    child: Text(id == null
                            ? "Create Task"
                            : "Update Task"          ///ternary operator
                    ))
              ],
        ),
      );
    });
  }

  Future<void> createTask() async{
    var id = await SQLHelper.create(ctitle.text, ccontent.text);
    print(id);
    loadTask();  // to update the ui ot list whenever a task is added
  }

  Future<void> updateTask(int id, String utitle, String ucontent) async{
    await SQLHelper.update(id, utitle, ucontent);
    loadTask();
  }


}
