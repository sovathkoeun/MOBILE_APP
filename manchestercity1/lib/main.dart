import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () =>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title:Text("Manchester city"),
          actions: <Widget>[
            Image.network(
              "https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png",

            )
          ],
          leading: Icon(
            Icons.menu,
          ),
        ),
        body: Container(
          child: Image.network(
            "https://wallpapercave.com/wp/wp2277807.jpg",
         fit: BoxFit.cover,
         height: double.infinity,
         width: double.infinity,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.favorite,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              color: Colors.blue[500],
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed:  () {},
                      icon: Icon(
                        Icons.search,
                          color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed:  () {},
                      icon: Icon(
                        Icons.message,
                          color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed:  () {},
                      icon: Icon(
                        Icons.add,
                          color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
          ),
      ),
    ),
);