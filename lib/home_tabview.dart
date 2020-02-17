import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
          labelPadding: EdgeInsets.only(top: 10),
        indicatorColor: Colors.deepOrange,
        tabs: <Widget>[
          Icon(Icons.line_style, color: Colors.grey,size: 32,),
          Icon(Icons.add_shopping_cart, color: Colors.grey,size: 32)

        ],
      ),

    );
  }
}
