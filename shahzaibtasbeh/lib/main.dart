import 'package:flutter/material.dart';
import 'createtasbeh.dart';
import 'countertasbeh.dart';
import 'viewalltasbeh.dart';
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
    );
  }
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => createtasbeh()));
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
                          builder: (context) => viewalltasbeh()));
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

viewalltasbeh() {
}

createtasbeh() {
}



countertasbeh() {
}

