import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.account_box_outlined),
          title: Text('FA19-BCS-059'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                    hintText: 'Enter number to ring'
                ),

              ),
              RaisedButton( onPressed:null,
                child: Text('Click Me'),
              ),


              Text('1'),
              getView(1 , Colors.pinkAccent),
              Text('2'),
              getView(2 , Colors.yellow),
              Text('3'),
              getView(3 , Colors.green),
              Text('4'),
              getView(4 , Colors.black87),
              Text('5'),
              getView(5 , Colors.brown),
              Text('6'),
              getView(6 , Colors.black45),
              Text('7'),
              getView(7 , Colors.deepOrange),
            ],
          ),
        )
    ),
  ));
}

Widget getView(int pos , Color color){
  return  Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)
      ),
      onPressed: (){
        playSound(pos);
      },
      child: Text(""),
    ),
  );
}

void playSound(int pos) {
  final audioPlayer = AudioCache();
  audioPlayer.play('assets_note$pos.wav');
}
