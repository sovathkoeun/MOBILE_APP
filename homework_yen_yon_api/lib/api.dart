import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APi extends StatefulWidget {
  @override
  _APiState createState() => _APiState();
}

class _APiState extends State<APi> {
  List users;
  Map userData;
  Future setapi() async {
    String url =
        "https://pixabay.com/api/?key=14001068-da63091f2a2cb98e1d7cc1d82&q=beautiful&image_type=photo&pretty=true";
    http.Response response = await http.get(url);
    // debugPrint(response.body);
    userData = json.decode(response.body);
    setState(() {
      users = userData['hits'];
    });
    // debugPrint(users.toString());
  }

  @override
  void initState() {
    super.initState();
    setapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homework API"),
      ),
      body: ListView.builder(
          itemCount: users == null ? 0 : users.length,
          itemBuilder: (BuildContext context, int i) {
            final user = users[i];
            return Card(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage("${user['userImageURL']}"),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(14.0),
                          child: Text("${users[i]['user']}"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image.network(
                            "${user['largeImageURL']}",
                            fit: BoxFit.cover,
                            width: 373.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
         }),
    );
  }
}
