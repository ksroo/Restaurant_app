import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;
  SubCategory({this.cat_id, this.cat_name});
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var myarr_category = [
    {
      "sub_id": "1",
      "sub_name": "بيتزا",
      "sub_image": "images/category/cat1.png",
      "sub_count" : "10",
    },
    {
      "sub_id": "2",
      "sub_name": "كريب",
      "sub_image": "images/category/cat2.png",
      "sub_count" : "5",
    },
    {
      "sub_id": "3",
      "sub_name": "برجر لحمه",
      "sub_image": "images/category/cat3.png",
      "sub_count" : "4",
    },
    {
      "sub_id": "4",
      "sub_name": "شاورما",
      "sub_image": "images/category/cat4.png",
      "sub_count" : "8",
    },
    {
      "sub_id": "5",
      "sub_name": "وجابات",
      "sub_image": "images/category/cat5.png",
      "sub_count" : "7",
    },
    {
      "sub_id": "6",
      "sub_name": "فريد اتشكن",
      "sub_image": "images/category/cat6.png",
      "sub_count" : "10",
    },
    {
      "sub_id": "7",
      "sub_name": "دونا روما",
      "sub_image": "images/category/cat7.png",
      "sub_count" : "9",
    },
    {
      "sub_id": "8",
      "sub_name": "سندوتشات",
      "sub_image": "images/category/cat8.png",
      "sub_count" : "6",
    },
    {
      "sub_id": "9",
      "sub_name": "حواوشي",
      "sub_image": "images/category/cat9.png",
      "sub_count" : "2",
    },
    {
      "sub_id": "10",
      "sub_name": "برجر فراخ",
      "sub_image": "images/category/cat10.png",
      "sub_count" : "4",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.cat_name,
          style: TextStyle(
              color: Color(0xffba0955),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: myarr_category.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleSubCategory(
                sub_id: myarr_category[index]["sub_id"],
                sub_image: myarr_category[index]["sub_image"],
                sub_name: myarr_category[index]["sub_name"],
                sub_count: myarr_category[index]["sub_count"],
              );
            }),
      ),
    );
  }
}

class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  SingleSubCategory({this.sub_id, this.sub_image, this.sub_name,this.sub_count});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory()));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[100],
                ),
                child: Image.asset(sub_image),
              ),
              title: Text(
                sub_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(sub_count),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
