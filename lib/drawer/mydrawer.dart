import 'package:flutter/material.dart';
import 'package:restaurant_app/account/changepassword.dart';
import 'package:restaurant_app/account/myprofile.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
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
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
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
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
             // ExpansionTile(),
              Theme(
                data: theme,
                child: ExpansionTile(
                  title:  Text(
                    "حسابي",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  children: [
                    //=========================== Child Account

                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
                            },
                            child: ListTile(
                              title: Text(
                                "تغير الاعدادات الشخصية",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
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
                          ),
                          Divider(
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));

                            },
                            child: ListTile(
                              title: Text(
                                "تغير كلمه السر",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(
                                Icons.lock_open,
                                color: Color(0xffba0955),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //=========================== end child account
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  color: Colors.black54,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
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
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "طلباتي",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.history,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "من نحن",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.message,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          "مركز الدعم",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.phone,
                          color: Color(0xffba0955),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
