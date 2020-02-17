
import 'package:flutter/material.dart';

class AppBarCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size;
    return  Container(
      height: 59,
      width: screenWidth.width * 1.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,size: 22,),
            ),
            Text('Shopping Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Stack(
              children: <Widget>[
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1,top: 1),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('All',style: TextStyle(fontSize: 12),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
