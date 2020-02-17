import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(Homework());
class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar:AppBar(
              title: Text("Basic Mobile Apps"),
            
              actions: <Widget>[
                Icon(Icons.group),
              ],

              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon:Icon(Icons.favorite),
                  ),
                  Tab(
                    icon:Icon(Icons.share),
                  ),
                  Tab(
                    icon:Icon(Icons.group),
                  ),
                  Tab(
                    icon:Icon(Icons.search),
                  ),
                ],
                
              ),
            ),

            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Center(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPSgd7DKzUlMTvLjvgnBaOMdxLHxMyvXauiuudTopqqnWm0RMq1w&s"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text("Contacts"),
                    leading: Icon(Icons.call),
                  ),
                ],
                
              ),
            ),
            
                
                  
                  
         


             body: TabBarView(
              children: <Widget>[
                Image.network("https://i.pinimg.com/originals/9b/0b/80/9b0b8071bc47d06ee4323bdbe3797946.jpg",
                fit: BoxFit.cover,
                height: 600.0,
                ),

                Image.network("http://chetanchauhan7.files.wordpress.com/2013/01/beti.jpg",
                 fit: BoxFit.cover,
                height: 600.0,
                ),

                Image.network("https://www.girlsdp.com/wp-content/uploads/images/stylish-cute-baby-girl-beautiful-smiling-hd-wallpapers-free.jpg",
                 fit: BoxFit.cover,
                height: 600.0,
                ),

                Image.network("https://www.girlsdp.com/wp-content/uploads/images/baby-girl-images-for-whatsapp-dp-hd-newwallpapers-org.jpg",
                 fit: BoxFit.cover,
                height: 600.0,
                ),
                
              ],
            ),
           
      
           
           

               

            floatingActionButton: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,  
              overlayColor: Colors.white,
              overlayOpacity: 0.5,            
              children: [
                SpeedDialChild( 
                  child: Icon(Icons.message),
                  label: "Message",
                  labelStyle: TextStyle(color: Colors.white),
                  labelBackgroundColor: Colors.yellow,
                  backgroundColor: Colors.yellow,
                ),

                SpeedDialChild( 
                  child: Icon(Icons.share),
                  label: "Sharing",
                  labelStyle: TextStyle(color: Colors.white),
                  labelBackgroundColor: Colors.redAccent,
                  backgroundColor: Colors.redAccent,
                ),

                SpeedDialChild( 
                  child: Icon(Icons.filter),
                  label: "Attach File",
                  labelStyle: TextStyle(color: Colors.white),
                  labelBackgroundColor: Colors.green,
                  backgroundColor: Colors.green,
                ),

                SpeedDialChild( 
                  child: Icon(Icons.favorite),
                  label: "Love You",
                  labelStyle: TextStyle(color: Colors.white),
                  labelBackgroundColor: Colors.blue,
                  backgroundColor: Colors.blue,
                ),
                SpeedDialChild( 
                  child: Icon(Icons.person),
                  label: "Firends",
                  labelBackgroundColor: Colors.red,
                  labelStyle: TextStyle(color: Colors.white),
                  backgroundColor: Colors.red,
                ),
              
              ], 
           ),

            bottomNavigationBar: BottomAppBar(
             child: Container(
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   IconButton(
                     icon: Icon(Icons.home,color: Colors.green,),
                     onPressed: (){},
                   ),
                   IconButton(
                     icon: Icon(Icons.thumb_up,color: Colors.pink,),
                     onPressed: (){},
                   ),
                   IconButton(
                     icon: Icon(Icons.thumb_down,color: Colors.red,),
                     onPressed: (){},
                   ),
                   IconButton(
                     icon: Icon(Icons.share,color: Colors.blue,),
                     onPressed: (){},
                   ),
                 ],
               )
               
             )
          ),
        ),
    ),
    );
  }
}