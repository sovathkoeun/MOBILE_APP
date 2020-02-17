import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() => runApp(Pixabay());
class Pixabay extends StatefulWidget {
  @override
  _PixabayState createState() => _PixabayState();
}

class _PixabayState extends State<Pixabay> {
  Map picture;
  List imgList;
  Future getPicture()async{
    http.Response response = await http.get("https://pixabay.com/api/?key=14010091-6fc887d8f179a5dc0fe818556&q=green+vegetable&image_type=photo&pretty=true");
   picture = json.decode(response.body);
   setState(() {
    imgList = picture['hits']; 
   });
    debugPrint(imgList.toString());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        getPicture();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lazy"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: imgList == null? 0 : imgList.length,
          itemBuilder: (context,i){
            return Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(imgList[i]['largeImageURL']),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(imgList[i]['userImageURL']),
                        radius: 30.0,
                        ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("${imgList[i]['user']}",
                         
                         style: TextStyle(
                           fontSize: 17.0,color: Colors.blueGrey,
                         ),
                         ),
                       ),
                        IconButton(icon: Icon(Icons.share,color: Colors.green,),),
                        IconButton(icon: Icon(Icons.favorite,color: Colors.blueGrey,),),
                        IconButton(icon: Icon(Icons.thumb_up,color: Colors.green,),),
                        
                    ],)
                  ),
                ],
              ),
             
            );
          }
        ),
      ),
    );
  }
}