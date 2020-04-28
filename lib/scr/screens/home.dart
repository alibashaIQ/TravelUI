import 'package:flutter/material.dart';
import 'package:fluttertravelapp/scr/icons/icons.dart';
import 'package:fluttertravelapp/scr/icons/imagehorizantal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "شركة فلامينكو للسياحة والسفر",
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.my_location,
              color: Colors.pink,
            ),
            onPressed: () {}),
        elevation: 10,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.jpg"),fit: BoxFit.cover)
        ),
        child: ListView(
          children: <Widget>[
            //الصورة الاولى في البنر
            Padding(padding: EdgeInsets.only(top: 25,left: 5,right: 5),
                        child: Container(
                height: 100,

                decoration: BoxDecoration(
                    color: Colors.pink[100], borderRadius: BorderRadius.circular(200)),
                child: Image.asset("images/image.jpg")
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 25, top: 25),
                            child: Text(
                              "حدد الوجهة والباقي علينا",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                  fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Iconsa(
                              iconData: Icons.airplanemode_active,
                              text: " هسه وقت السفر ",
                            ),
                            Iconsa(
                              iconData: Icons.accessibility_new,
                              text: "بخبراتنا نفرك العالم",
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Iconsa(
                            iconData: Icons.attach_money,
                            text: "بأنسب الاسعار",
                          ),
                          Iconsa(
                            iconData: Icons.flight_takeoff,
                            text: "مع افضل خطوط السفر",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "افضل الرحلات",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // صور واماكن افضل الرحلات
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Horizantal(
                        pic: "images/1.jpg",
                        textPic: "أيطاليا",
                        textDays: "15 يوم",
                        textPrice: "\$1000"),
                    Horizantal(
                        pic: "images/2.jpg",
                        textPic: "الهند",
                        textDays: "10 ايام",
                        textPrice: "\$700"),
                    Horizantal(
                        pic: "images/3.jpg",
                        textPic: "المالديف",
                        textDays: "15 يوم",
                        textPrice: "\$1700"),
                    Horizantal(
                      pic: "images/wl.jpg",
                      textPic: "تركيا",
                      textDays: "7 ايام",
                      textPrice: "\$600",
                    )
                  ],
                )),
            SizedBox(
              height: 5,
            ),
            //الصورة الثانية في البنر
            Padding(padding: EdgeInsets.only(top: 25,left: 5,right: 5,bottom: 10),
                        child: Container(
                height: 150,

                decoration: BoxDecoration(
                    color: Colors.pink[100], borderRadius: BorderRadius.circular(200)),
                child: Image.asset("images/image2.jpg")
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 75),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "الرحلات الداخلية",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //لستة الرحلات الداخلية
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Horizantal(
                        pic: "images/samara.jpg",
                        textPic: "سامراء",
                        textDays: "3 ايام",
                        textPrice: "\$50"),
                    Horizantal(
                        pic: "images/karbala.jpg",
                        textPic: "كربلاء",
                        textDays: "2 يوم",
                        textPrice: "\$70"),
                    Horizantal(
                        pic: "images/erbile.jpg",
                        textPic: "اربيل",
                        textDays: "5 ايام",
                        textPrice: "\$100"),
                    Horizantal(
                      pic: "images/babielon.jpg",
                      textPic: "بابل",
                      textDays: "2يوم",
                      textPrice: "\$50",
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            //لستة الايقونات 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){},
                       child:Iconsa(iconData: Icons.account_circle,text: "تعرف علينا",)
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){},
                       child:Iconsa(iconData: Icons.check_circle_outline,text: "أفضل العروض ",)
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){},
                       child:Iconsa(iconData: Icons.zoom_in,text: "المزيد من الرحلات",)
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){},
                       child:Iconsa(iconData: Icons.add_call,text: "اتصل بنا",)
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){},
                       child:Iconsa(iconData: Icons.location_on,text: "موقعنا",)
                     ),
                   ),
                ],
              ),
            ),
          ),
         
             
          
          ],
        ),
      ),
    );
  }
}
