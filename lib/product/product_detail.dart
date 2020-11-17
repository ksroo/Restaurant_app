import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
                onPressed: () {},
              )),

          Expanded(child: Text("")),
          //====================== Shopping Cart

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
                  Icons.shopping_cart,
                  color: Color(0xffba0955),
                ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Container(
      padding: EdgeInsets.all(10),
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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Image.asset("images/product/pro1.jpg"),
          Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //====================== back
              Container(
                  decoration: BoxDecoration(
                    color: Color(0xffba0955),
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
                    icon: FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              //====================== Shopping Cart

              Container(
                  decoration: BoxDecoration(
                    color: Color(0xffba0955),
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
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          headerBuild(),
          imageProduct(),
          Container(
            child: Column(
              children: [
                Text("سمك مشوي",style: TextStyle(fontSize: 20,),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
