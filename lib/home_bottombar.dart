import 'package:flutter/material.dart';

class BarBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(top: 13,bottom: 13,left: 18,right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.home,size: 35,color: Colors.grey,),
            Icon(Icons.search,size: 35,color: Colors.grey),
            Icon(Icons.shopping_basket,size: 35,color: Colors.grey),
            Icon(Icons.mail_outline,size: 35,color: Colors.grey),
            Container(
              //  height: 40,
              width: 45,
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(80),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(

                    child: Image.network(
                      'https://helpiewp.com/wp-content/uploads/2017/12/user-roles-wordpress.png',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
