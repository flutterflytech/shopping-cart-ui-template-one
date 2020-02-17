import 'package:flutter/material.dart';

class StackItem extends StatefulWidget {
  @override
  _StackItemState createState() => _StackItemState();
}

class _StackItemState extends State<StackItem> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black12, Colors.black12])),
      height: deviceData.height * 0.5,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.dehaze,
                color: Colors.white,
                size: 30,
              ),
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white54),
                    child: Container(
                      width: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ],
              ),
              Icon(
                Icons.settings_overscan,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Design your space',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  'Home & Living',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
