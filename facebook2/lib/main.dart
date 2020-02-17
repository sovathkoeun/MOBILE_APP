import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(DemoAPI());
class DemoAPI extends StatefulWidget {
  @override
  _DemoAPIState createState() => _DemoAPIState();
}

class _DemoAPIState extends State<DemoAPI> {
  Map img;
  List imgList;
  Future getImage() async{
    http.Response response = await http.get("https://pixabay.com/api/?key=14001068-da63091f2a2cb98e1d7cc1d82&q=yellow+flowers&image_type=photo&pretty=true");
    // debugPrint(response.body);
    img = json.decode(response.body); // store data all
    setState(() {
     imgList = img['hits'];      // store data hits
    //  debugPrint(imgList.toString());  // test get data hits
    });
  }
  @override

  void initState(){
    super.initState(); 
    getImage();  // call function
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pixaby 2020"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: imgList == null? 0: imgList.length, //count image if imglist not image output 0 else input all imagee
          itemBuilder: (BuildContext context, int index){
            final imgs = imgList[index];
            return Card(
               child: Column(
                 children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.network(imgList[index]['largeImageURL']),
                  ), 
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(imgs['userImageURL']),
                            radius: 20.0,
                          ),
                           Text("${imgs['tags']}"),
                           IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.thumb_up,color: Colors.red,),
                          ),
                           IconButton(
                              onPressed: () {},
                             icon: Icon(Icons.comment,color: Colors.pink[900],),
                           ),
                        ],
                      )
                    ),
                 ],
               ),
            );
          },
        ),
      ),
    );
  }
}