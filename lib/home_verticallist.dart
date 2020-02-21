import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'fetch_data.dart';

class VerticalList extends StatefulWidget {
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  List<Post> list = [];
  void initState() {
    getUserData();
    super.initState();
  }
  getUserData()async{
    list = await fetchPost();

    //print('Final List ==>>>' + list[6].toString());
    setState(() {});

  }
  @override
  Widget build(BuildContext context) {
    return Container(


      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 12),
              child: Text("what's new", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.vertical,

                itemCount: list.length,
                itemBuilder: (context, index){
                  Post data = list[index];
                  return ListItemVertical(data: data);
                }
            ),
          )
        ],
      ),
    );
  }

  Future<List<Post>> fetchPost() async {
    final response =  await http.get('https://my-json-server.typicode.com/ravishankarsingh1996/demoJsonRepo/db');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      //print(response.body);
      var data = json.decode(response.body);
      var rest =data['data'] as List;
      print(rest);
      List<Post> list = rest.map((json) => Post.fromJson(json)).toList();

      return list;


      //return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }

  }
}


class ListItemVertical extends StatefulWidget {
  final Post data;
  ListItemVertical({this.data});
  @override
  _ListItemVerticalState createState() => _ListItemVerticalState();
}

class _ListItemVerticalState extends State<ListItemVertical> {
  @override
  Widget build(BuildContext context) {
    var img = MediaQuery.of(context).size;
    return Container(
    //  margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(boxShadow: [

        ]),
        child: ClipRRect(
          borderRadius:
          BorderRadius.all(Radius.circular(10)),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.network(
                      widget.data.itemImage, height: img.height * 0.3,
                      width: img.width * 0.6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 6.0, top: 8.0),
                    child: Text(widget.data.itemName,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Acme'),),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.all(6.0),
                    child: Row(
                      children: <Widget>[
                        Text('Nike'),
                        Spacer(),
                        Text('\$' +widget.data.itemPrice,style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
