import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Mobile"),
          centerTitle: true,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
               radius:29.0,
               backgroundImage: NetworkImage("https://i1.wp.com/www.uyfc.org/wp-content/uploads/2017/04/01.png?w=600",
               
               ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius:60.0,
                    backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/769475016773611520/F1v-BW_1_400x400.jpg"),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
              ),

              ListTile(
                title: Text("0969153269"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Message"),
                leading: Icon(Icons.message),
                trailing: Icon(Icons.message),
              ),

            ],
          ),
        ),
      body: ListView(
        children: <Widget>[
          Image.network("https://img.lemde.fr/2019/04/22/0/191/1619/1079/688/0/60/0/e39da8d_2FIads9h8wB-0SwSgxVaVWsp.jpg",
          fit: BoxFit.cover,
          width: 300.0,
          height: 300.0,
          ),
          Container(
           height: 50.0,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite,color: Colors.teal,),
                  Icon(Icons.thumb_down,color: Colors.red,),
                  Icon(Icons.thumb_up,color: Colors.pink,),
                  Icon(Icons.search,color: Colors.yellow),
                ],
              ),
            ),
          ),

          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network("https://images.squarespace-cdn.com/content/v1/593cb752579fb3fa4a713ff4/1513131816881-IPMZPURUYGRBFPBEY141/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Flower+Tribe+Backyard-3014.jpg?format=2500w",
                fit: BoxFit.cover,
                width: 200.0,
                height: 200.0,
                ),
                Image.network("http://blog.flowersacrossmelbourne.com.au/wp-content/uploads/2015/02/Beth.jpg",
                fit: BoxFit.cover,
                width: 200.0,
                height: 200.0,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: RaisedButton(
              onPressed: (){},
              color: Colors.purple,
              child: Text("Share",style: TextStyle(fontSize: 30.0,color: Colors.white),),
              splashColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            ),
          ),

          Container(
            child: Card(
              child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("In publishing and graphic design, lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used before final copy is available, but it may also be used to temporarily replace copy in a process called greeking, which allows designers to consider form without the meaning of the text influencing the design."),
              ),
              elevation: 12.0,
            ),
          ),

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network("https://www.natria.com/sites/natria/files/2019-01/Growing_Roses%E2%80%93Keys_To_Success.jpg",
              fit: BoxFit.cover,
              height: 100.0,
              width: 100.0,
              ),
              Image.network("https://www.natria.com/sites/natria/files/2019-01/Growing_Roses%E2%80%93Keys_To_Success.jpg",
              fit: BoxFit.cover,
              height: 100.0,
              width: 100.0,
              ),
              Image.network("https://www.natria.com/sites/natria/files/2019-01/Growing_Roses%E2%80%93Keys_To_Success.jpg",
              fit: BoxFit.cover,
              height: 100.0,
              width: 100.0,
              ),
            ],
          ),
        ),
       
        




        ],
      ),

    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add,color: Colors.white),
      backgroundColor: Colors.red,
      onPressed: (){},
    ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}