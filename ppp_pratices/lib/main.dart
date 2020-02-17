// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() => runApp(MobileTab());

// class MobileTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//        child: Scaffold(
//          appBar: AppBar(
//            title: Text("Mobile Tab"),
//            bottom: TabBar(
//               tabs: <Widget>[
//                 Tab(icon: Icon(Icons.search),),
//                 Tab(icon: Icon(Icons.favorite),),
//                 Tab(icon: Icon(Icons.person),),
//                 Tab(icon: Icon(Icons.add),),
//               ],
//             ),
//          ),
//          body: TabBarView(
//            children: <Widget>[
//              Icon(Icons.search),
//               Icon(Icons.favorite),
//               Icon(Icons.person),
//               Icon(Icons.add),
//            ],
//          ),
//        ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(Mobile());

// class Mobile extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("data"),
//             bottom: TabBar(
//               tabs: <Widget>[
//                 Tab(icon: Icon(
//                   Icons.search,
//                   color: Colors.orange,
//                 ),),
//                 Tab(icon: Icon(Icons.favorite),),
//                 Tab(icon: Icon(Icons.person),),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: <Widget>[
//               Icon(Icons.youtube_searched_for),
//               Icon(Icons.youtube_searched_for),
//               Icon(Icons.youtube_searched_for),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());
class App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Never remember..!"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.search),),
                Tab(icon: Icon(Icons.search),),
                Tab(icon: Icon(Icons.search),),
                Tab(icon: Icon(Icons.search),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}