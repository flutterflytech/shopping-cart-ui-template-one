import 'package:flutter/material.dart';

import 'itemdetail/item_detail_page.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
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
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index){
                return ListItem();
              },
            ),
          )
        ],
      ),
    );
  }
}


class ListItem extends StatefulWidget {
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
                        Image.network(
                          'https://www.styleathome.com/assets/img/default.jpg?v=1522265967',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 6.0, top: 8.0),
                          child: Text('Flyknit Goddess',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.all(6.0),
                          child: Row(
                            children: <Widget>[
                              Text('Nike'),
                              Spacer(),
                              Text('\$120',style: TextStyle(fontWeight: FontWeight.bold),)
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
              icon: (_isFavourite ? Icon(Icons.favorite_border,color: Colors.white,) : Icon(Icons.favorite,color: Colors.red,)),
              onPressed: _toggleFavorite,


            ),
          )
        ],
      ),
    );
  }
}
