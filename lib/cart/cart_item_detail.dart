import 'package:flutter/material.dart';

class CartItemDetail extends StatefulWidget {
  @override
  _CartItemDetailState createState() => _CartItemDetailState();
}

class _CartItemDetailState extends State<CartItemDetail> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter == 99) {
        return null;
      }
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter == 0) {
        return null;
      }
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://www.styleathome.com/assets/img/default.jpg?v=1522265967'))),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Essential Kits',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '\$',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: decrementCounter,
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: incrementCounter,
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
