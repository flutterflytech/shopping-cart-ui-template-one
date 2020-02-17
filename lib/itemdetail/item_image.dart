import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context).size;
    return Container(
      height: deviceData.height * 0.4,

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://www.styleathome.com/assets/img/default.jpg?v=1522265967')
          )
      ),

    );
  }
}
