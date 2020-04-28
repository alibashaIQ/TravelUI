import 'package:flutter/material.dart';
import 'package:fluttertravelapp/scr/screens/traveldetiles.dart';

class Horizantal extends StatelessWidget {
  final String pic;
  final String textPic;
  final String textDays;
  final String textPrice;

  Horizantal({this.pic, this.textPic, this.textDays, this.textPrice});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GridTile(
            footer: Container(
              color: Colors.white54,
              child: ListTile(
                leading: Text(
                  textPic,textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                title: Text(
                  textDays,textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 12),
                ),
                subtitle: Text(
                  textPrice,textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
            child: InkWell(onTap: ()=>Navigator.of(context).push(MaterialPageRoute(

                  // the new window that show when enter to productes
                  builder: (context) =>TravelDetails(
                    travelDays: textDays,
                    travelName: textPic,
                    travelPictur: pic,
                    travelPrice: textPrice,
                  ),)),
                          child: Image.asset(
                pic,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
