import 'package:flutter/material.dart';
import 'package:shopping_app/cart/appbar_cart.dart';
import 'package:shopping_app/cart/cart_bg.dart';
import 'package:shopping_app/cart/cart_bottom_bar.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CartBottomBar(),
      backgroundColor: Color.fromRGBO(220, 220, 220, 1.0),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
             AppBarCart(),
              CartBackground()
            ],
          ),
        ),

      ),
    );
  }
}
