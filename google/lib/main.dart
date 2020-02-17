// import 'package:flutter/material.dart';

// void main() => runApp(
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.red[900],
//             title: Text("Liverpool FC"),
//             actions: <Widget>[
//               Image.network(
//                 "https://logodownload.org/wp-content/uploads/2017/05/google-chrome-logo.png",
//               )
//             ],
//             elevation: 12.0,
//             leading: Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//          body: Stack(
//            children: <Widget>[
//              Image.network(
//                "https://smash-eliquid.com/wp-content/uploads/2018/12/mixed-fruit-e-liquid.jpg",
//                fit: BoxFit.cover,
//                 height: 710.0,
//              )
//            ],
//          ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {},
//             child: Icon(
//               Icons.favorite,
//             ),
//           ),

//           bottomNavigationBar:BottomAppBar(
//             color: Colors.red[900],
//             child: Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.home,
//                        color: Colors.white,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.search,
//                        color: Colors.white,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.message,
//                      color: Colors.white,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.add,
//                       color: Colors.white,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Item List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: ListView(
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.map),
//               title: Text('Map'),
//             ),
//             ListTile(
//               leading: Icon(Icons.photo_album),
//               title: Text('Album'),
//             ),
//             ListTile(
//               leading: Icon(Icons.phone),
//               title: Text('Phone'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main(){
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Androidmonds"),
//           actions: <Widget>[
//             Icon(Icons.comment),
//             Icon(Icons.settings),
//           ],
//           backgroundColor: Colors.deepOrangeAccent,
//           elevation: 50.0,
//         ),
//       ),
//     )
//   );
// }


import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
void main() => runApp(Demo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DefaultTabController(
        length: 4,
        child:  Scaffold(
          appBar: AppBar(
            title: Text("Rady Demo!"),
            backgroundColor: Colors.orange,
            // leading: Icon(Icons.menu),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],

            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon:Icon(Icons.favorite),),
                Tab(icon: Icon(Icons.share),),
                Tab(icon: Icon(Icons.group),),
                Tab(icon: Icon(Icons.search),),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                        "https://themecountry.com/entertainment/wp-content/uploads/2019/01/Song-Hye-Kyo.jpg",
                      ),
                    )
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
              ],
            ),
          ),
          body:TabBarView(
          children: <Widget>[
            Image.network(
              "https://i.imgur.com/9JOS2Ul.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,

            ),
            Image.network("https://netstorage-legit.akamaized.net/images/bd00d9358adfe705.jpg"),
            Image.network("https://i.pinimg.com/564x/66/63/6a/66636af42b9d4728a02f996191926c8b.jpg"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDVdFWSOFkswZ0tnIJa8W4_dOAk1QZp0ETSLkEKn9uAZ6AKHSD"),
          ],
          ),


          //button
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.headset),
          //   onPressed: () {},
          //   backgroundColor: Colors.yellow[600],
          //   mini: true,
          //   // shape: RoundedRectangleBorder(
          //   //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
          //   // ),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

          // floatingActionButton: FloatingActionButton.extended(
          //   icon: Icon(
          //     Icons.mail,
          //   ),
          //   label: Text("E-mail"),
          //   onPressed: () {},
          // ),

          bottomNavigationBar:BottomAppBar(
            child: Container(
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home,size:40.0, color:Colors.green),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.save,size:40.0, color:Colors.green),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.school,size:40.0, color:Colors.green),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.sd_storage,size:40.0, color:Colors.green),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ),

          floatingActionButton: SpeedDial(
            animatedIcon:AnimatedIcons.menu_close,
            overlayColor: Colors.pink,
            children: [
              SpeedDialChild(
                child: Icon(Icons.message),
                backgroundColor: Colors.purple,
                label: "message",
              ),
              SpeedDialChild(
                child: Icon(Icons.mic_none),
                backgroundColor: Colors.teal,
                label: "message",
                labelBackgroundColor: Colors.greenAccent,
                labelStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )
              ),
              SpeedDialChild(
                child: Icon(Icons.mobile_screen_share),
                backgroundColor: Colors.yellowAccent,
              ),
              SpeedDialChild(
                child: Icon(Icons.mood_bad),
                backgroundColor: Colors.transparent,
              ),
              SpeedDialChild(
                child: Icon(Icons.games),
                backgroundColor: Colors.orangeAccent,
              ),
            ],
            overlayOpacity: 0.3,
          ),
      ),
      ),
    );
    
  }
}
