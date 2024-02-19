import 'dart:async';

import 'package:flutter/material.dart';

class EmergencyHome extends StatefulWidget {
  const EmergencyHome({super.key});

  @override
  State<EmergencyHome> createState() => _EmergencyHomeState();
}

class _EmergencyHomeState extends State<EmergencyHome>
    with TickerProviderStateMixin {
  int secondremaining = 30;
  late Timer timer;
  bool timerrunning = false;
  var names = [
    "Elina Solomon",
    "Musa Howe",
    "Persephone Morris",
    "Christian Herman",
    "Paulina Hanson",
    "Khalil Stephens",
    "Millie Dean",
    "Ronan Novak",
    "Kaiya Shannon",
    "Eliel Parsons",
    "Maia Alfaro",
    "Xzavier Palacios",
    "Bria McCarthy",
    "Devin Rodgers",
    "Selah Graves",
    "Cesar Gardner",
    "Jordyn Wilkinson",
    "Leonard Sheppard",
    "Veda Delgado",
    "Colt Merritt"
  ];

  var phones = [
    "(676) 560-1740",
    "(281) 531-8256",
    "(758) 892-4673",
    "(802) 398-5264",
    "(937) 849-4986",
    "(667) 391-4142",
    "(696) 372-7710",
    "(910) 996-8656",
    "(913) 583-7655",
    "(512) 587-4138",
    "(241) 890-7298",
    "(823) 992-5798",
    "(236) 642-0031",
    "(821) 620-5515",
    "(721) 216-6279",
    "(255) 906-2368",
    "(610) 593-8163",
    "(646) 559-1142",
    "(826) 730-1466",
    "(576) 661-0626",
  ];
  @override

  void starttimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (secondremaining > 0) {
          secondremaining--;
        } else {
          timer.cancel();
          timerrunning = false; // Stop the timer when it reaches 0 seconds
        }
      });
    });
  }

  void stoptimer() {
    timer.cancel();
    timerrunning = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                  child: Text(
                    '    WE ARE SENDING\nEMERGENCY SUPPORT',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Dont worry our support team will\ncontact you in next',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: 1 - (secondremaining / 60.0),
                      strokeWidth: 13,
                      backgroundColor: const Color.fromARGB(255, 245, 20, 4),
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.grey),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '00:$secondremaining',
                            style: TextStyle(fontSize: 35),
                          ),
                          Text(
                            'seconds',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  //      height: 400,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: names.length,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text(names[index]),
                            subtitle: Text(phones[index]),
                            trailing: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Icon(
                                  Icons.phone_in_talk,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}