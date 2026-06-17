import 'package:flutter/material.dart';

void main() {
  runApp(const Task3Act2());
}

class Task3Act2 extends StatefulWidget {
  const Task3Act2({super.key});

  @override
  State<Task3Act2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Task3Act2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //--HEADER HERE
        appBar: AppBar(
          title: const Text('Tanudtanud_Task3 Activity2'),
          backgroundColor: const Color.fromARGB(255, 238, 26, 196),
          centerTitle: true,
        ),

        //--BODY HERE
        body: Center(
          //--RED CONTAINER
          child: Column(
            children: [
              //--Container1 and Design
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                ),

                //--Text saying "EdgeInsets.all(30)"
                child: const Text(
                  'EdgeInsets.all(30)',
                ),
              ),

              //--This is spacing distace between 2 boxes
              const SizedBox(height: 40),

              //--Container2 and Design
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),

                //--Text saying "EdgeInsets.symmetric(horizontal:40,vertical:10)"
                child: const Text(
                  'EdgeInsets.symmetric(horizontal:40,vertical:10)',
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              ),

              //--This is spacing distace between 2 boxes
              const SizedBox(height: 40),

              //--Container3 and Design
              Container(
                padding: const EdgeInsets.only(
                    left: 30, top: 10, right: 5, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(),
                ),

                //--Text saying "EdgeInsets.only(left:30, top: 10, right: 5, bottom: 20)"
                child: const Text(
                  'EdgeInsets.only(left:30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(
                    fontSize: 12.5,
                  ),
                ),
              ),

              //--This is spacing distace between 2 boxes
              const SizedBox(height: 40),

              //--Container3 and Design
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(),
                ),

                //--Text saying "EdgeInsets.fromLTRB(10,20,30,40)"
                child: const Text('EdgeInsets.fromLTRB(10,20,30,40)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
