import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        body: SafeArea(child: Column(children: [

          AppBar(
            centerTitle: true,
              backgroundColor: Colors.black,
              leading: Icon(Icons.arrow_back_outlined),

              title: Text('Profile App')
          ),
          CircleAvatar(
            backgroundImage: AssetImage('images/shah.jpg'),
            backgroundColor: Colors.tealAccent,
            radius: 50.0,
          ),
          Text(
            'Shahzaib Mushtaq Shah',
            style: TextStyle(
              fontFamily: '',
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'FA19-BCS-059',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 200.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '+092-3045738872',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'shahzaibshah8872@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              )),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.alternate_email_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  'Shahzaib-Khagga',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/call.png'),
                backgroundColor: Colors.tealAccent,
                radius: 50.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/email.png'),
                backgroundColor: Colors.tealAccent,
                radius: 50.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/wahtsap.png'),
                backgroundColor: Colors.green,
                radius: 50.0,
              ),
            ],
          ),
        ],
        ),
        ),

      ),

    );
  }
}
