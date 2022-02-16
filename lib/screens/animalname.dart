import 'package:flutter/material.dart';

class AnimalName extends StatefulWidget {
  @override
  _AnimalNameState createState() => _AnimalNameState();
}

class _AnimalNameState extends State<AnimalName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ECFCF),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.0, left: 30.0),
                child: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                child: Image.asset(
                  "images/bulb.png",
                  width: 100.0,
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                  "Animal Name",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 150.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: Card(
                    color: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Image.asset(
                      "images/panda.png",
                      width: 100.0,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.amber, size: 35.0),
                    SizedBox(width: 10.0),
                    Icon(Icons.volume_up, color: Colors.white, size: 50.0),
                    SizedBox(width: 10.0),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.amber, size: 35.0),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 250.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Speak",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 550.0),
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
      ),
    );
  }
}
