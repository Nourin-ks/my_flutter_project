import 'package:flutter/material.dart';

import 'db_logndreg.dart';


class Admindash extends StatefulWidget {
  @override
  State<Admindash> createState() => _AdmindashState();
}

class _AdmindashState extends State<Admindash> {
  var tasks = [];

  @override
  void initState() {
    super.initState();
    loaduser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [


                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: Text(
                        'ADMIN',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.w900),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.only(
                            //     topLeft: Radius.circular(40),
                            //     topRight: Radius.circular(40))
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              itemCount: tasks.length,
                              itemBuilder: (context, index) => Card(
                                child: ListTile(
                                  title: Text(tasks[index]['name']),
                                  subtitle: Text(tasks[index]['email']),
                                  trailing: Wrap(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              delele(tasks[index]['id']);
                                            });
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ))
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loaduser() async {
    var u = await SQL_function.takeusers();
    setState(() {
      tasks = u;
    });
  }

  void delele(int id) async {
    await SQL_function.deletetask(id);
    loaduser();
  }
}