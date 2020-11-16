import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget HeaderBuild() {
    return Row(
      children: [
        Container(

          decoration: BoxDecoration(

            color: Colors.white,
            boxShadow: [BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),],
            borderRadius: BorderRadius.circular(15),
          ),
            child: IconButton(

          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffba0955),
          ),
          onPressed: () {},
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: HeaderBuild(),
          )
        ],
      ),
    );
  }
}
