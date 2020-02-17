import 'package:flutter/material.dart';
import 'package:shopping_app/cart/cart_page.dart';

class ItemDetailBottomBar extends StatefulWidget {
  @override
  _ItemDetailBottomBarState createState() => _ItemDetailBottomBarState();
}

class _ItemDetailBottomBarState extends State<ItemDetailBottomBar> {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(left: 27),
        child: Row(
          children: <Widget>[
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));

                },
                child: Icon(Icons.shopping_basket,size: 35,color: Colors.grey,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
              child: Container(
                color: Colors.grey,
                width: 2,
                height: 39,
              ),
            ),
            Icon(Icons.message,size: 35,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Container(
                color: Colors.grey,
                width: 2,
                height: 39,
              ),
            ),
            Icon(Icons.add_circle_outline,size: 35,color: Colors.grey,),
            Spacer(),
            Container(
              width: 100,
              height: 70,
              color: Colors.deepOrange,
              child: Center(child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 20),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
