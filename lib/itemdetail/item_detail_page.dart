import 'package:flutter/material.dart';
import 'package:shopping_app/item_horizontallist.dart';
import 'package:shopping_app/itemdetail/back_button.dart';
import 'package:shopping_app/itemdetail/item_detail_bottom_bar.dart';
import 'package:shopping_app/itemdetail/item_image.dart';
import 'package:shopping_app/itemdetail/item_name_price.dart';

import 'add_favorite.dart';
import 'item_description.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ItemDetailBottomBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ItemImage(),
                  IosBackButton(),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Container(
                              width: 40,
                              child: Image.network(
                                'https://helpiewp.com/wp-content/uploads/2017/12/user-roles-wordpress.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Oasandalps',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrange),
                          child: Center(
                              child: Text(
                            '\$',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AddFavorite()
                      ],
                    ),
                  )
                ],
              ),
              ItemNamePrice(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      '74 Reviews',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      '4.5/5 (86)',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      '108',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Spacer(),
                    Text(
                      'Free shipping',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    )
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: TabBar(
                  indicatorColor: Colors.deepOrange,
                  tabs: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Details',
                        style: TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1.0),
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Reviews',
                        style: TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1.0),
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              ItemDescription(),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(120, 120, 120, 1.0)),
                        child: Center(
                            child: Text(
                          '7',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    Text('Similer Products')
                  ],
                ),
              ),
              Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListItem();
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
