import 'package:flutter/material.dart';

class BgImage extends StatefulWidget {
  @override
  _BgImageState createState() => _BgImageState();
}

class _BgImageState extends State<BgImage> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context).size;
    return Container(
      height: deviceData.height * 0.5,

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://www.styleathome.com/assets/img/default.jpg?v=1522265967'),

          ),
      ),

    );
  }
}
