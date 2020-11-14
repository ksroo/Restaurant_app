import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        "انشاء حساب",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xffba0955),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "جديد",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xffba0955),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "الاسم الكامل",
                          border: InputBorder.none,
                        ),
                        validator: (String value)
                        {
                          if(value.isEmpty || value.length < 1)
                            {
                              return "الرجاء ادخال الاسم الكامل";
                            }
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "الاسم الكامل",
                          border: InputBorder.none,
                        ),
                        validator: (String value)
                        {
                          if(value.isEmpty || value.length < 1)
                          {
                            return "الرجاء ادخال الاسم الكامل";
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text("botton text"),
            ),
          ],
        ),
      ),
    );
  }
}
