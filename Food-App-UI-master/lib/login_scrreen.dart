import 'package:CoffeeAppUI/Register.dart';
import 'package:CoffeeAppUI/home.dart';
import 'package:CoffeeAppUI/widgets/login_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  child: Image.asset("assets/images/logo.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Food App",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  "Eat Healthy Think Better",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      padding: EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: FlatButton(
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => login(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      padding: EdgeInsets.only(top: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black,
                          )),

                      child: Center(
                        child: FlatButton(
                          child: Text(
                            "Register",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  login1()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoginButton(
                      bgColor: Colors.blue,
                      image: "assets/images/google.png",
                      imgsize: 25,
                      text: "Connect with Google",
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginButton(
                      bgColor: Colors.blue,
                      image: "assets/images/facebook.png",
                      imgsize: 30,
                      text: "Connect with facebook",
                      textColor: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Image.asset("assets/images/LoginCoffee.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
