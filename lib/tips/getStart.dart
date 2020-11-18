import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/config.dart';
import 'package:restaurant_app/tips/tips.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
   double myheight =  MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            Container(

              height: myheight * 2,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/tip0.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              height: myheight,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: primeryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "اشهي المأكولات",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "أفضل المأكولات تجدونها في مطعمنا العديد من المأكولات لدينا",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Tips();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, bottom: 7.0, top: 7.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              "أبدا من هنا",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
