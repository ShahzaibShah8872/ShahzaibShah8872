import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

class Splash extends StatefulWidget {
  //const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _mainPage();
  }

  _mainPage() async {
    await Future.delayed(
      const Duration(milliseconds: 2900),
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => QuizApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          children: [
            Image(
              height: 500,
              width: 300,
              image: AssetImage('images/shah.png'),


            ),
            Text("Shahzaib Shah", style: TextStyle(fontSize: 40)),
            Text("Flutter-Developer", style: TextStyle(fontSize: 40)),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
