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

  void _showSheetMessage(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder (
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
      ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      child: Icon(
                        Icons.done,
                        color: Color(0xffba0955),
                        size: 55,
                      ),
                    ),
                    Text(
                      "شكرا لطلبك",
                      style: TextStyle(
                          color: Color(0xffba0955),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "يمكنك تتبع الطلبية من خلال الضغط علي الزر في الاسفل",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "تابع الطلبية",
                            style: TextStyle(color: Colors.white,fontSize: 20),

                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffba0955),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "الانتقال الي المأكولات",
                            style: TextStyle(color: Colors.black,fontSize: 20),

                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
              height: 110,
              child: headerBuild(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 230.0,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("100.0"),
                        Expanded(child: Text("")),
                        Text("اجمالي المبلغ"),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Text("100.0"),
                        Expanded(child: Text("")),
                        Text("دليفري"),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Text("100.0"),
                        Expanded(child: Text("")),
                        Text("الاجمالي الكلي"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "اضافة الي السلة",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xffba0955),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  _showSheetMessage(context);
                },
                child: Text(
                  "تاكيد الطلبية",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xffba0955),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
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
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel,
              color: Colors.deepOrange,
            ),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          ),
        ],
      ),
    );
  }
}
