import 'package:flutter/material.dart';


class CartBottomBar extends StatefulWidget {
  @override
  _CartBottomBarState createState() => _CartBottomBarState();
}

class _CartBottomBarState extends State<CartBottomBar> {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(left: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
                child: Text('\$88',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            Container(

              width: 120,
              height: 70,
              color: Colors.deepOrange,
              child: Center(child: Text('Check Out',style: TextStyle(color: Colors.white,fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }
}
