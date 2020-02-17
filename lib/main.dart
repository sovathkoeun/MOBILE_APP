import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Learning());

class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Colors.brown[50],
            appBar: AppBar(
              title: Text("Teacher Idol!"),
              centerTitle: true,
              backgroundColor: Colors.brown[400],
             
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Icon(Icons.send),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.group),
                ),
                Container(
                  child: Icon(Icons.search),
                  margin: EdgeInsets.only(right: 20.0),
                )
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Icon(Icons.favorite),
                  ),
                  Tab(
                    child: Icon(Icons.share),
                  ),
                  Tab(
                    child: Icon(Icons.search),
                  ),
                  Tab(
                    child: Icon(Icons.shopping_basket),
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                   
                    child: Center(
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage:NetworkImage("https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940") ,
                      ),
                    ),
                     decoration: BoxDecoration(
                       image:DecorationImage(
                         fit: BoxFit.cover,
                         image: NetworkImage("https://images.unsplash.com/photo-1562887340-7fd6e949c8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                       )
                     ),
                  ),

                  ListTile(
                    title:Text("096 888 888"),
                    subtitle: Text("Smart"),
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.sms),
                  ),
                  ListTile(
                    title:Text("096 888 888"),
                    subtitle: Text("Smart"),
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.sms),
                  ),
                  ListTile(
                    title:Text("096 888 888"),
                    subtitle: Text("Smart"),
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.sms),
                  ),
                  ListTile(
                    title:Text("096 888 888"),
                    subtitle: Text("Smart"),
                    leading: Icon(Icons.phone),
                    trailing: Icon(Icons.sms),
                  ),

                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[

                Stack(
                  children: <Widget>[
                     Image.network("https://images.pexels.com/photos/1322129/pexels-photo-1322129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        fit: BoxFit.cover,
                        width: 700.0,
                        height: 700.0,
                     ),
                  Center(
                    child: Text("Romdul",style: TextStyle(color: Colors.blue,fontSize: 30.0), ),
                  )
                  ],
                ),

                Stack(
                  children: <Widget>[
                     Image.network("https://images.pexels.com/photos/1322129/pexels-photo-1322129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                       fit: BoxFit.cover,
                        width: 700.0,
                        height: 700.0,
                     ),
                  Center(
                    child: Text("Romdul",style: TextStyle(color: Colors.blue,fontSize: 30.0), ),
                  )
                  ],
                ),

                Stack(
                  children: <Widget>[
                     Image.network("https://images.pexels.com/photos/1322129/pexels-photo-1322129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                       fit: BoxFit.cover,
                        width: 700.0,
                        height: 700.0,
                     ),
                  Center(
                    child: Text("Romdul",style: TextStyle(color: Colors.blue,fontSize: 30.0), ),
                  )
                  ],
                ),

                Stack(
                  children: <Widget>[
                     Image.network("https://images.pexels.com/photos/1322129/pexels-photo-1322129.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      fit: BoxFit.cover,
                        width: 700.0,
                        height: 700.0,
                    
                     ),
                  Center(
                    child: Text("Romdul",style: TextStyle(color: Colors.blue,fontSize: 30.0), ),
                  )
                  ],
                ),
               
                // Center(
                //   child:Text(
                //   "Favorite",
                //   style: TextStyle(
                //     fontSize: 50.0,
                //   ),
                //   ), 
                // ),
                // Center(
                //   child:   Text("Share",style: TextStyle(fontSize: 50.0),),
                  
                // ),
                // Center(
                //   child:   Text("Search",style: TextStyle(fontSize: 50.0),),
                // ),
                // Center(
                //   child:   Text("Shopping",style: TextStyle(fontSize: 50.0),),
                // ),
               
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.favorite_border),
              backgroundColor: Colors.pink[500],
              splashColor: Colors.purple,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          ),
        ));
  }
}
//stl = StatelessWedget
//Stf = Statefullwidget
