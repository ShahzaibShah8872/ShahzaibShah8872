import 'package:flutter/material.dart';


class counttasbeeh extends StatelessWidget {
  const counttasbeeh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('Count Tasbeeh'),
      ),
    );
  }
}