import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'fetch_data.dart';
import 'itemdetail/item_detail_page.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  List<Post> list = [];
  @override
  void initState() {
    getUserData();
    super.initState();

  }
  getUserData() async{
    list = await fetchPost();

    //print('Final List ==>>>' + list[6].toString());
    setState(() {});

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'You may like',
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'Pacifico',),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index){
                Post data = list[index];
                return ListItem(data: data);
              },
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


class ListItem extends StatefulWidget {
  final Post data;
  ListItem({this.data});


  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isFavourite = true;

  void _toggleFavorite() {
    setState(() {
      if (_isFavourite) {

        _isFavourite = false;
      } else {

        _isFavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
  var img = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
      child: Stack(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 1.0),
                    spreadRadius: 0.5,
                    blurRadius: 6)
              ]),
              child: ClipRRect(
                borderRadius:
                BorderRadius.all(Radius.circular(10)),
                child: Container(
                  //height: 130.0,
                  //width: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image.network(
                            widget.data.itemImage, height: img.height * 0.2,width: img.width * 0.2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 6.0, top: 8.0),
                          child: Text(widget.data.itemName,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Plaster'),),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.all(6.0),
                          child: Row(
                            children: <Widget>[
                              Text(widget.data.itemRating ),
                              Icon(Icons.star,size: 15,color: Colors.orangeAccent,),
                              Spacer(),
                              Text('\$'+widget.data.itemPrice,style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              icon: (_isFavourite ? Icon(Icons.favorite_border,color: Colors.grey) : Icon(Icons.favorite,color: Colors.red,)),
              onPressed: _toggleFavorite,


            ),
          )
        ],
      ),
    );
  }

}
