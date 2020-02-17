import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MobileTab());
class MobileTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Mobile Tab"),
            leading: IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {},
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.search),),
                Tab(icon: Icon(Icons.favorite),),
                Tab(icon: Icon(Icons.person),),
                Tab(icon: Icon(Icons.add),),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // Icon(Icons.search),
              // Icon(Icons.favorite),
              // Icon(Icons.person),
              // Icon(Icons.add),
              Image.network(
                "https://www.aswaaqonline.ae/content/images/thumbs/009/0098862_fruit-basket-large_550.jpeg",
              ),
              Image.network(
                "https://befreshcorp.net/wp-content/uploads/2017/07/product-packshot-mango.jpg",
              ),
              Image.network(
                "https://5.imimg.com/data5/PY/XT/MY-3674107/mangosteen-fruit-500x500.jpg",
              ),
              Image.network(
                "https://previews.123rf.com/images/boarding1now/boarding1now1606/boarding1now160600011/60462815-apples-apple-fruit-fruits-slice-half-isolated-on-a-white-background.jpg",
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}


