import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "توصيل الطب الي",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "موقع الزبون",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xffba0955),
                      size: 30,
                    ),
                    onPressed: () {}),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Color(0xffba0955),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "بحث",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleCategory(
                cat_id: "1",
                cat_image: "images/category/cat1.png",
                cat_name: "category1",
              ),
            ),
          ],
        ),
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
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xffba0955),
          ),
          child: Image.asset(cat_image),
        ),
        Text(
          cat_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

