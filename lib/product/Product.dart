import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/product/product_detail.dart';

class FoodProduct extends StatefulWidget {
  @override
  _FoodProductState createState() => _FoodProductState();
}

class _FoodProductState extends State<FoodProduct> {
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1 ",
      "pro_image": "images/product/pro1.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "desc product2 desc product2 desc product2 desc product2 ",
      "pro_image": "images/product/pro2.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("بيتزا مرجريتا",style: TextStyle( color: Colors.black),),
          backgroundColor: Colors.white,
          leading: IconButton(icon: (Icon(Icons.arrow_back_ios,color: Colors.black,)),
            onPressed: (){
              Navigator.of(context).pop();
            } ,
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: myarr_product.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleProduct(
                pro_desc: myarr_product[index]["pro_desc"],
                pro_name: myarr_product[index]["pro_name"],
                pro_image: myarr_product[index]["pro_image"],
                pro_id: myarr_product[index]["pro_id"],
                pro_offer: myarr_product[index]["pro_offer"],
              );
            },
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_desc,
      this.pro_image,
      this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(pro_image),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pro_name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      overflow: TextOverflow.clip,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: pro_desc,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //=================================favorite
            Container(
              height: 100,
              width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  checkOffer(pro_offer)
                ],
              ),
            ),
            //=================================end favorite
          ],
        ),
      ),
    );
  }

  Widget checkOffer(String pro_offer) {
    return pro_offer == "1"
        ? Container(
      padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: Text(
              "عرض",
              style: TextStyle(color: Colors.white),
            ),
          )
        : Text("");
  }
}
