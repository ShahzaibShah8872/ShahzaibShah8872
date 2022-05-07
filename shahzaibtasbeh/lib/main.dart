import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tasbeeh app for Muslims'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
   });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => createTashbeh()));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Create Tasbeeh',
                        ),
                      ),
                    ),
                  )
                ]
            ),
            ),
            Expanded(child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => countertasbeh()));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Counter Tasbeeh',
                        ),
                      ),
                    ),
                  )
                ]
            ),
            ),
            Expanded(child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => countertasbeh()));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'View All Tasbeh',
                        ),
                      ),
                    ),
                  )
                ]
            ),
            ),

          ],
        ),
      ),
    );
  }

  createTashbeh() {}

  countertasbeh() {}
}
