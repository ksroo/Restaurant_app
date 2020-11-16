import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Walid",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                accountEmail: Text(
                  "elm3lamasroo@gmail.com",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Color(0xffba0955),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                  "الصفحه الرئسية",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.home,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "حسابي",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "مفضلاتي",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      ),
                    ],
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
