import 'package:flutter/material.dart';

///ex1.1
// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Change Widget"),
//         ),
//         body: Container(
//           child: Center(
//             child: Image.network(
//               "https://befreshcorp.net/wp-content/uploads/2017/07/product-packshot-mango.jpg",
//               fit: BoxFit.cover,
//               width: 200,
//               height: 200,if  
//             ),
//           ),

//           // Image.network("https://befreshcorp.net/wp-content/uploads/2017/07/product-packshot-mango.jpg"),
//         ),
//       ),
//     ));

//ex1.2.
// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Change Widget"),
//           centerTitle: true,
//         ),
//         body: Container(
//           child: Center(
//             child: CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://www.itl.cat/pngfile/big/11-111594_indian-beautiful-girl-images-wallpaper-pictures-download-indian.jpg"),
//               radius: 30.0,
//             ),
//           ),
//         ),
//       ),
//     ));

// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//            leading: Icon(
//             Icons.menu,
//           ),
//           title: Text("Welcome Flutter"),
//        actions: <Widget>[
//            Icon(Icons.search),
//            Icon(Icons.settings),
//        ],
//         ),
//       ),
//     ));

//ex.2.1
// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Welcome Flutter"),
          
//         ),
//         body: Center(
//           child: RaisedButton(
//             onPressed: (){},
//             color: Colors.blue,
//             child: Text("wep team"),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.satellite),
//         ),
//       ),
//     ));

//ex.2.2
// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Welcome Flutter"),
          
//         ),
//         body: Center(
//           child: RaisedButton(
//             onPressed: (){},
//             color: Colors.blue,
//             child: Text("wep team"),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.satellite),
//         ),
//       ),
//     ));


// void main() => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("fweufhewiufhiwe"),
      
//       ),
//         body: Container( 
//           padding: EdgeInsets.only(left:160),
//           child: Center(
//             child: Row(  
//               children: <Widget>[
//                 RaisedButton(
//                   onPressed: (){},
//                   child: Text("data", style: TextStyle(color: Colors.white)),
//                   color: Colors.blue,
//                 )
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.person),
//         ),
    
     
//      ),
//     ),
// );

// void main() => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("fweufhewiufhiwe"),
//         leading: Icon(Icons.menu),
      
//       ),
//         body: Container( 
//           child: Column(
//             children: <Widget>[
//               Container(
//                   margin: EdgeInsets.only(top: 150.0),
//                  width: 250.0,
//                  height: 90.0,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                 ),
//               ),

//               Container(
//                   margin: EdgeInsets.only(top: 30.0),
//                  width: 250.0,
//                  height: 90.0,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//               ),

//                Container(
//                   margin: EdgeInsets.only(top: 30.0),
//                  width: 250.0,
//                  height: 90.0,
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                 ),
//               ),
//             ], 
//           ),
//         ),
        
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//      floatingActionButton: FloatingActionButton.extended(
//       onPressed: () {},
//       icon: Icon(Icons.send),  
//       label: Text("Message"),
//     ), 
//      ),
//     ),
// );

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
    
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("aa"),
        leading: Icon(Icons.face),
        centerTitle: true,
      ),
        body:
         Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 30.0),
                 width: 250.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),

               Container(
                  margin: EdgeInsets.only(top: 30.0),
                 width: 250.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),

               Container(
                  margin: EdgeInsets.only(top: 30.0),
                 width: 250.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),



              Container(
                child: Row(
                  children: <Widget>[
                    
               Container(
                  margin: EdgeInsets.only(top: 30.0, left: 30.0),
                 width: 100.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),

                      
               Container(
                  margin: EdgeInsets.only(top: 30.0, left: 30.0),
                 width: 100.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),

                 Container(
                  margin: EdgeInsets.only(top: 30.0, left: 30.0),
                 width: 100.0,
                 height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
                  ],
                ),
              ),
           


            ],
            
          ),
        ),
        
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     floatingActionButton: FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.send),
      label: Text("Message"),
    ),
     
     ),
    ),
  
);
