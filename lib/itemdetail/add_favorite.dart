import 'package:flutter/material.dart';

class AddFavorite extends StatefulWidget {
  @override
  _AddFavoriteState createState() => _AddFavoriteState();
}

class _AddFavoriteState extends State<AddFavorite> {
  bool _isFavourite = true;

  void _toggleFavorite() {
    setState(() {
      if (_isFavourite) {

        _isFavourite = false;
      } else {

        _isFavourite = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: (_isFavourite ? Icon(Icons.favorite_border,size: 29,color: Colors.blueGrey,) : Icon(Icons.favorite,size: 29,color: Colors.red,)),
      onPressed: _toggleFavorite,


    );
  }
}
