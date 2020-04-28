import 'package:flutter/material.dart';
import 'package:fluttertravelapp/scr/screens/home.dart';

class TravelDetails extends StatefulWidget {
  final travelName;
  final travelDays;
  final travelPrice;
  final travelPictur;
  TravelDetails(
      {this.travelDays, this.travelName, this.travelPrice, this.travelPictur});
  @override
  _TravelDetailsState createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("تفاصيل رحلة ${widget.travelName}",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              )),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.pink,
            ),
            onPressed: () { Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));}),
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.jpg"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: GridTile(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Image.asset(widget.travelPictur),
                          );
                        });
                  },
                      child: Image.asset(widget.travelPictur)),
                  ),
                  footer: Container(
                    color: Colors.pink[50],
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                        widget.travelName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink,fontSize: 20),
                        ),
                      ),
                      title:
                      Center(child: Text("سعر الرحلة ${widget.travelPrice}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 17))),
                      subtitle: 
                      Center(child: Text("مدة الرحلة ${widget.travelDays}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 16))),
                    ),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text("تفاصيل الرحلة"),
                subtitle: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {},
                    color: Colors.pink,
                    textColor: Colors.white,
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                          child: Text(
                            "احجر رحلتك الان",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ))
                      ],
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
