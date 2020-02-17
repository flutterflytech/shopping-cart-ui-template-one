import 'package:flutter/material.dart';
import 'package:shopping_app/bg_image.dart';
import 'package:shopping_app/home_bottombar.dart';
import 'package:shopping_app/stack_items.dart';
import 'package:shopping_app/home_tabview.dart';
import 'package:shopping_app/item_horizontallist.dart';
import 'package:shopping_app/home_verticallist.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'online_shopping',
      debugShowCheckedModeBanner: false,
      home: OnlineShopping(),
    );
  }
}

class OnlineShopping extends StatefulWidget {
  @override
  _OnlineShoppingState createState() => _OnlineShoppingState();
}

class _OnlineShoppingState extends State<OnlineShopping> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BarBottom(),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    BgImage(),
                    StackItem(),
                  ],
                ),
                    TabView(),
                    Divider(
                      thickness: 2,
                    ),
                    HorizontalList(),
                    VerticalList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


