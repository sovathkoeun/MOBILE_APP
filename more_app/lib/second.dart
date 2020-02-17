import 'package:flutter/material.dart';
import 'package:more_app/first.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
              );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}