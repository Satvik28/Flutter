import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/satvik.jpeg'),
                radius: 100.0,
              ),
              Text(
                'Satvik Deshmukh',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                'Engineer',
                style: TextStyle(
                  fontSize: 35.0,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.teal[50],
                ),
              ),
              Card(
                color: Colors.blueGrey[50],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.local_phone_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 9969362927',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                color: Colors.blueGrey[50],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'satvikdeshmukh3@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
