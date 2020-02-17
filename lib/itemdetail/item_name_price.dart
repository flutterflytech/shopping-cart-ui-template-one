import 'package:flutter/material.dart';

class ItemNamePrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Essential Kits',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,)),
          Text('\$30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
        ],
      ),
    );
  }
}
