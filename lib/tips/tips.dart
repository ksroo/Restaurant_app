import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:restaurant_app/account/login.dart';
import 'package:restaurant_app/account/register.dart';
import 'package:restaurant_app/pages/config.dart';
import 'package:restaurant_app/pages/config.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarr = [
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip1.png",
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip2.png",
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق منهنا يمكنك البدء",
      "image": "images/tip3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(top: 40.0,right: 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "دخول",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xffba0955),

                  ),
                ),
              ),
            ),
            Container(
              height: myheight * 4,
              child: PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                length: myarr.length,
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.white,
                indicatorSelectorColor: Color(0xffba0955),
                child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: myarr.length,
                    itemBuilder: (BuildContext context, i) {
                      return SingleTips(
                        title: myarr[i]["title"],
                        info: myarr[i]["info"],
                        image: myarr[i]["image"],
                      );
                    }),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    Column(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color(0xffba0955),
                            ),
                            child: Text(
                              "أنشاء حساب",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              FaIcon(
                                  FontAwesomeIcons.facebook, size: 20.0,color: Color(0xff01168c),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "متابعه باستخدام فيس بوك",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  SingleTips({this.title, this.info, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.red, fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 70.0),
          child: Text(
            info,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
