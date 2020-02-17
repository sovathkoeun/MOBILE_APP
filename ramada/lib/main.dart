import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text('Flutter mobile'),
        actions: <Widget>[
          Image.network("https://www.passerellesnumeriques.org/wp-content/uploads/2016/03/pn-logo.png"),
        ],
        leading: Icon(Icons.menu,
        color: Colors.pink[900],
        ),
      ),
      body: Container(

        child: Image(image:AssetImage('images/hacker.jpg'),
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        ),
      
        ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){},
       child: Icon(
         Icons.favorite,
       ),
     ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink[900],
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
        
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
              
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                ),
              )
            ],
          ),
        ),
      ),
    ),
),
);