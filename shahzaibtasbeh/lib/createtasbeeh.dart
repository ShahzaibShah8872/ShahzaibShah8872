import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class createtasbeeh extends StatelessWidget {
  const createtasbeeh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('TASBEEH APP'),
    ),
      body: Column(
        children: [
        Padding(
          padding:  const EdgeInsets.all(40.0),
          child:(

              TextField(
                decoration: new InputDecoration(labelText: "Enter Tasbeeh name"),
                keyboardType: TextInputType.text,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              )
            ),
          ),
          Padding(
            padding:  const EdgeInsets.all(40.0),
            child:(

                TextField(
                  decoration: new InputDecoration(labelText: "Enter no of count"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                )
            ),
          ),
          SizedBox(
            width: 200,
            child:  ElevatedButton(
              child: const Text('Create'
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const createtasbeeh()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
        ],

      ),
    );
  }
}
