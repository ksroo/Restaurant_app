import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/product/subcategory.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "بيتزا",
      "cat_image": "images/category/cat1.png",
    },
    {
      "cat_id": "2",
      "cat_name": "كريب",
      "cat_image": "images/category/cat2.png",
    },
    {
      "cat_id": "3",
      "cat_name": "برجر لحمه",
      "cat_image": "images/category/cat3.png",
    },
    {
      "cat_id": "4",
      "cat_name": "شاورما",
      "cat_image": "images/category/cat4.png",
    },
    {
      "cat_id": "5",
      "cat_name": "وجابات",
      "cat_image": "images/category/cat5.png",
    },
    {
      "cat_id": "6",
      "cat_name": "فريد اتشكن",
      "cat_image": "images/category/cat6.png",
    },
    {
      "cat_id": "7",
      "cat_name": "دونا روما",
      "cat_image": "images/category/cat7.png",
    },
    {
      "cat_id": "8",
      "cat_name": "سندوتشات",
      "cat_image": "images/category/cat8.png",
    },
    {
      "cat_id": "9",
      "cat_name": "حواوشي",
      "cat_image": "images/category/cat9.png",
    },
    {
      "cat_id": "10",
      "cat_name": "برجر فراخ",
      "cat_image": "images/category/cat10.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "قائمة الطعام",
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
              return SingleCategory(
                cat_id: myarr_category[index]["cat_id"],
                cat_image: myarr_category[index]["cat_image"],
                cat_name: myarr_category[index]["cat_name"],
              );
            }),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_image, this.cat_name});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubCategory(cat_id: cat_id,cat_name: cat_name,)));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red.shade100,
                ),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
