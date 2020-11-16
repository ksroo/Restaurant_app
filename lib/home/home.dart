import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/drawer/mydrawer.dart';
import 'package:restaurant_app/product/product_detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var myarr_product = [
    {
      "pro_id": "1",
      "pro_name": "product1",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1 ",
      "pro_image": "images/product/pro1.jpg",
    },
    {
      "pro_id": "2",
      "pro_name": "product2",
      "pro_desc": "desc product2 desc product2 desc product2 desc product2 ",
      "pro_image": "images/product/pro2.jpg",
    },
    {
      "pro_id": "3",
      "pro_name": "product3",
      "pro_desc": "desc product3 desc product3 desc product3 desc product3 ",
      "pro_image": "images/product/pro3.jpg",
    }
  ];

  var myarr_category = [
    {
      "cat_id": "1",
      "cat_name": "cat1",
      "cat_image": "images/category/cat1.png",
    },
    {
      "cat_id": "2",
      "cat_name": "cat2",
      "cat_image": "images/category/cat2.png",
    },
    {
      "cat_id": "3",
      "cat_name": "cat3",
      "cat_image": "images/category/cat3.png",
    },
    {
      "cat_id": "4",
      "cat_name": "cat4",
      "cat_image": "images/category/cat4.png",
    },
    {
      "cat_id": "5",
      "cat_name": "cat5",
      "cat_image": "images/category/cat5.png",
    },
    {
      "cat_id": "6",
      "cat_name": "cat6",
      "cat_image": "images/category/cat6.png",
    },
    {
      "cat_id": "7",
      "cat_name": "cat7",
      "cat_image": "images/category/cat7.png",
    },
    {
      "cat_id": "8",
      "cat_name": "cat8",
      "cat_image": "images/category/cat8.png",
    },
    {
      "cat_id": "9",
      "cat_name": "cat9",
      "cat_image": "images/category/cat9.png",
    },
    {
      "cat_id": "10",
      "cat_name": "cat10",
      "cat_image": "images/category/cat10.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _keyDrawer,
        endDrawer: MyDrawer(),
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
                    GestureDetector(
                      onTap: (){
                        _keyDrawer.currentState.openEndDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Color(0xffba0955),
                        size: 40,
                      ),
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
                width: MediaQuery.of(context).size.width,
                height: 110.0,
                child: ListView.builder(
                    itemCount: myarr_category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleCategory(
                        cat_id: myarr_category[index]["cat_id"],
                        cat_image: myarr_category[index]["cat_image"],
                        cat_name: myarr_category[index]["cat_name"],
                      );
                    }),
              ),
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: myarr_product.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleProduct(
                        pro_id: myarr_product[index]["pro_id"],
                        pro_image: myarr_product[index]["pro_image"],
                        pro_name: myarr_product[index]["pro_name"],
                        pro_desc: myarr_product[index]["pro_desc"],
                      );
                    }),
              ),
            ],
          ),
        ),
        // down bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:0,
          selectedItemColor: Color(0xffba0955),
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications,size: 28,),
              title: Text("الاشعارات"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant,size: 28,),
              title: Text("العروض"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 28,),
              title: Text("حسابي"),
            ),
          ]),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()));
       },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            Text(
              pro_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              pro_desc,
              style: TextStyle(color: Colors.grey),
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
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red.shade100,
            ),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
