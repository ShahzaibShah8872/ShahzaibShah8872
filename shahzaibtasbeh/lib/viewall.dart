import 'package:flutter/material.dart';


class viewall extends StatelessWidget {
  const viewall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('View Tasbeeh'),
      ),
    );
  }
}