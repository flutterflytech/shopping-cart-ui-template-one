import 'package:flutter/material.dart';

class CartShippingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
        child:Container(
          height: 74,
          width: screenWidth.width * 1.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 1.0,),
                height: 72,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                    color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Free',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('Standard Shipping',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    Text('(3-5 Days)',style: TextStyle(color: Colors.grey,fontSize: 15))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 1.0,),
                height: 72,
                width: 137,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                    color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('\$10',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('Express Shipping',style: TextStyle(color: Colors.grey,fontSize: 15)),
                    Text('(1-3 Days)',style: TextStyle(color: Colors.grey,fontSize: 15))
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
