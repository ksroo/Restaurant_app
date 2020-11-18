import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  Widget headerBuild() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          //====================== back
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[100],
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffba0955),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),

          Expanded(child: Text("")),
          //====================== Shopping Cart
        ],
      ),
    );
  }

  var mypro = [
    {
      "pro_id": "1",
      "pro_name": "مشاوي",
      "pro_price": "100",
      "pro_image": "images/category/cat10.png",
      "pro_gty": "3",
    },
    {
      "pro_id": "1",
      "pro_name": "مشاوي",
      "pro_price": "100",
      "pro_image": "images/category/cat10.png",
      "pro_gty": "3",
    },
    {
      "pro_id": "1",
      "pro_name": "مشاوي",
      "pro_price": "100",
      "pro_image": "images/category/cat10.png",
      "pro_gty": "3",
    },
    {
      "pro_id": "1",
      "pro_name": "مشاوي",
      "pro_price": "100",
      "pro_image": "images/category/cat10.png",
      "pro_gty": "3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView.builder(
                itemCount: mypro.length,
                itemBuilder: (context, index) {
                  return SingleProduct(
                    pro_id: mypro[index]["pro_id"],
                    pro_name: mypro[index]["pro_name"],
                    pro_image: mypro[index]["pro_image"],
                    pro_gty: mypro[index]["pro_gty"],
                    pro_price: mypro[index]["pro_price"],
                  );
                },
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 120,
              child: headerBuild(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Text(
              "1000",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(4),
            ),
            Text(
              "المجموع",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Expanded(child: Text("")),
            GestureDetector(
               onTap: (){},
              child: Row(
                children: [
                  Text(
                    "اضافة الي السلة",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 50, right: 30),
        height: 75.0,
        decoration: BoxDecoration(
          //color: Colors.red[300],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.red,
                Colors.red[300],
                Colors.red[300],
                Colors.red,
              ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 7,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_gty;
  final String pro_image;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_price,
      this.pro_gty,
      this.pro_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          pro_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(pro_price),
        leading: Container(
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pro_image),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        trailing: Container(
          width: 70,
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              Expanded(
                  child: Text(
                pro_gty,
                style: TextStyle(fontSize: 19),
                textAlign: TextAlign.center,
              )),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: FaIcon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
