import 'package:flutter/material.dart';

class Iconsa extends StatelessWidget {
  final IconData iconData;
  final String text;
  Iconsa({this.iconData, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.pink[100], borderRadius: BorderRadius.circular(15)),
          child: Icon(
            iconData,
            color: Colors.pink,
            size: 25,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w500, color: Colors.pink),
        )
      ],
    );
  }
}
