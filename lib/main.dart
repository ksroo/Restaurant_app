import 'package:flutter/material.dart';
import 'package:restaurant_app/tips/getStart.dart';
import 'package:restaurant_app/tips/tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:restaurant_app/pages/config.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashApp(

    ),
  ));
}

class SplashApp extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      routeName: '/',
      navigateAfterSeconds: new GetStart(),
      title: new Text(
        'مرحبا بكم في مطعمنا',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
      ),
      backgroundColor: Color(0xffba0955),
      loaderColor: Colors.red,
    );
  }
}
