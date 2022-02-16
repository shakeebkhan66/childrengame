import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animalname.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// TODO initState
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), homeScreen);
  }

  /// Callback function
  void homeScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AnimalName()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ECFCF),
      body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 140.0),
              child: Image.asset(
                "images/logo_sperate.png",
                width: 200.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 240.0),
              child: Image.asset(
                "images/body_parts.png",
                width: 100.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 130.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/loading_icon.gif"),
                radius: 55.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 285.0),
              child: Text(
                "Loading......",
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 580.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        "images/bottomLeft.png",
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        "images/bottomRight.png",
                        width: 300,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
