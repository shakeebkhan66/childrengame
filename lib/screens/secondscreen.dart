import 'package:childrengame/screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ECFCF),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade800,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                  width: 28,
                  height: 20,
                  child: Center(child: Text("AG", style: TextStyle(color: Colors.white),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                   Image.asset("images/logom.gif", width: 130,),
                    Image.asset("images/body.png", width: 70,),
                    SizedBox(width: 70,),
                    Image.asset("images/shre.png", width: 60,)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: [
                    SizedBox(width: 110,),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, color: Colors.cyan, size: 90,),
                        ),
                        SizedBox(height: 5.0,),
                        Text("Hello", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Image.asset("images/Alphas.png", width: 100,),
                        Image.asset("images/Numbers.png", width: 100,),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/learn.gif", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Learn", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/1.png", width: 100,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=> SplashScreen()));
                        },
                        child: Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Practice", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 7.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/progress.gif", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Progress", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Profile.png", width: 100,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade500,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset("images/bottomLeft.png", height: 180,),
                  Image.asset("images/bottomRight.png", height: 150,),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
