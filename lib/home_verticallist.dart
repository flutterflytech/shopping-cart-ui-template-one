import 'package:flutter/material.dart';

class VerticalList extends StatefulWidget {
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 12),
              child: Text("what's new", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.vertical,

                itemCount: 10,
                itemBuilder: (context, index){
                  return ListItemVertical();
                }
            ),
          )
        ],
      ),
    );
  }
}


class ListItemVertical extends StatefulWidget {
  @override
  _ListItemVerticalState createState() => _ListItemVerticalState();
}

class _ListItemVerticalState extends State<ListItemVertical> {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(boxShadow: [

        ]),
        child: ClipRRect(
          borderRadius:
          BorderRadius.all(Radius.circular(10)),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://www.styleathome.com/assets/img/default.jpg?v=1522265967',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 6.0, top: 8.0),
                    child: Text('Flyknit Goddess',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.all(6.0),
                    child: Row(
                      children: <Widget>[
                        Text('Nike'),
                        Spacer(),
                        Text('\$120',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
