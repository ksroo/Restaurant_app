import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getTimeLine() {
    double heightCon = 70.0;
    return Container(
      color: Colors.grey[50],
      margin: EdgeInsets.only(top: 10.0, bottom: 80),
      child: Column(
        children: [
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "تأكيد الطلبية",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "تجهيز الطلبية",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "تم تجهيز الطلبية في المطعم",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "الدليفري استلم الطلبية",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "الدليفري قريب من المكان",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInfoDelivery() {
    return Container(
      child: ListTile(
        title: Text(
          "الاسم",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "وليد محمود",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
        ),
        leading: Container(
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/product/pro3.jpg"),
            ),
          ),
        ),
        trailing: Container(
          width: 50.0,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.red,
                  ),
                  Text(
                    "4.0",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              Text(
                "14444",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "تتبع الطلبية",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "محادثة",
                  style: TextStyle(
                      color: Color(0xffba0955),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.chat,
                  color: Color(0xffba0955),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Text(
            "الوقت المقدر للاستلام الطلبية",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "07:15:00",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          getInfoDelivery(),
          getTimeLine(),
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "الغاء الطلبية",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
