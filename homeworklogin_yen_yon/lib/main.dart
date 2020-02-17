import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  bool _isChecked = false;
  void change(bool value) {
    setState(() {
      _isChecked = value;
    });
  }
  //get username
  String _username = "";
  String getUsername(String username) {
    setState(() {
      _username = username;
    });
    return _username;
  }
  //get password
  String _password = "";
  String getPassword(String password) {
    setState(() {
      _password = password;
    });
    return _password;
  }

  String _results = "";
  void displayResults() {
    setState(() {
      if (_isChecked) {
        _results = "@Username:" + _username + ";" +" @password: " + _password;
      } else {
        _results = "You are not yet agree";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 40.0, top: 30.0),
              child: TextField(
                onChanged: (String username) {
                  getUsername(username);
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: ("Username"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 40.0, top: 30.0),
              child: TextField(
                onChanged: (String password) {
                  getPassword(password);
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), hintText: ("Password")),
                obscureText: true,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 70.0),
              child: Row(
                children: <Widget>[
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool value) {
                        change(value);
                      }),
                  Container(
                    child: Text("Are you agree?"),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60.0, right: 10.0, top: 20.0),
              child: SizedBox(
                width: 290,
                child: RaisedButton(
                  onPressed: () => displayResults(),
                  color: Colors.blue,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60.0, right: 10.0, top: 20.0),
              child: SizedBox(
                width: 290,
                height: 50.0,
                child: Card(
                  child: Text(
                    _results,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
