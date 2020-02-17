import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Text("Lorem Ipsum is simply dummy text of"
            " the printing and typesetting industry. Lorem "
            "Lorem Ipsum הוא פשוט טקסט גולמי של תעשיית ההדפסה וההקלדה. Lorem Ipsum היה טקסט סטנדרטי עוד במאה ה-16, כאשר הדפסה לא ידועה לקחה מגש של דפוס ועירבלה אותו כדי ליצור סוג של ספר דגימה. ספר זה שרד לא רק חמש מאות שנים אלא גם את הקפיצה לתוך "
            "text ever since the 1500s, when an unknown"
            " printer took a galley of type and scrambled it ",style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
