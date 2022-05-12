import 'package:flutter/material.dart';
import 'package:shahzaibtasbeh/createtasbeeh.dart';
import 'package:shahzaibtasbeh/counttasbeeh.dart';
import 'package:shahzaibtasbeh/viewall.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: tasbeeh(),
  ));
}


class tasbeeh extends StatelessWidget {
  const tasbeeh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('TASBEEH APP'),
        ),
      body: Column(
        children: [
        Expanded(child: Row(
    children: [
    Expanded(
    child: Card(
    elevation: 60,
    shadowColor: Colors.black,
    color: Colors.white,
    child: SizedBox(
    width: 300,
    height: 600,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children: [
    SizedBox(
    height: 10,
    ),
      CircleAvatar(
        backgroundImage: AssetImage('images/tasbeeh.jpg'),
        backgroundColor: Colors.tealAccent,
        radius: 80.0,
      ),
      Text(
        ''
      ),
      SizedBox(
        width: 200,
        child:  ElevatedButton(
          child: const Text('Create Tasbeeh'
          ),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const createtasbeeh()),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ),
        ),
      Text(''),//RaisedButton
      SizedBox(
        width: 200,
        child:  ElevatedButton(
          child: const Text('Count Tasbeeh'
          ),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const counttasbeeh()),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ),
      ),
      Text(''),
      SizedBox(
        width: 200,
        child:  ElevatedButton(
          child: const Text('View All Tasbeeh'
          ),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const viewall()),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ),
      ),
        ],
      ),
    ),
    ),
    ),
    ),
    ]),
    ),
    ])
    );
  }
}
