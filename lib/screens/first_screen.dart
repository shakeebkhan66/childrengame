import 'package:childrengame/screens/secondscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4ECFCF),
      body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("images/animal.gif", width: 100,),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade500,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Animals", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("images/bird.gif", width: 100,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.cyan.shade500,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(child: Text("Birds", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/colors.png", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Colors", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/days.gif", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Days", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/fruits.gif", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Fruits", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/Vegs.png", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Vegetables", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/relation.png", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Relations", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/body.png", width: 100,),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("Body Parts", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 47,
                child: Image.asset("images/home.png", width: 80,),
              ),
              SizedBox(height: 20,),
            ],
          ),
      ),
    );
  }
}
