import 'package:CoffeeAppUI/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
class login extends StatelessWidget {
  const login({key}) : super(key: key);

  get nameController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SafeArea(
        child: Scaffold(



          body: Padding(
              padding: EdgeInsets.all(50),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      //forgot password screen
                    },
                    textColor: Colors.black,
                    child: Text('Forgot Password'),
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('Login'),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  HomeScreen()),
                          );
                        },
                      )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.black,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {

                            //signup screen
                          },
                        )
                      ],
                    ),
                  )

                ],
              )
          ),
        ),
      ),
    );

  }
}

