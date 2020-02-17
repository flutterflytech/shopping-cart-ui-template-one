import 'package:flutter/material.dart';

class IosBackButton extends StatefulWidget {
  @override
  _IosBackButtonState createState() => _IosBackButtonState();
}

class _IosBackButtonState extends State<IosBackButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,

      child: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)
      ),

    );
  }
}

