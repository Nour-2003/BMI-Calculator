import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMI_Result.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int height_Controller = 180;
  late int weight_Controller = 60;
  late int age_Controller = 28;
  double height =180;
  Color button_Color = Color(0xFF242427);
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isMale ? Color(0xFFEC244F):Color(0xFF242427)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale =false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:isMale ?Color(0xFF242427):Color(0xFFEC244F) ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF242427),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height_Controller.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: Color(0xFFEC244F),
                          value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                              height_Controller = value.round();
                            });
                            // print(value.round());
                          })
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF242427)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                weight_Controller.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight_Controller++;
                                      });
                                    },
                                    heroTag: 'weight++',
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 30,
                                    ),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight_Controller--;
                                      });
                                    },
                                    heroTag: 'weight--',
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 30,
                                    ),
                                    backgroundColor: Colors.grey[600],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF242427)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                age_Controller.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age_Controller++;
                                      });
                                    },
                                    heroTag: 'age++',
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 30,
                                    ),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age_Controller--;
                                      });
                                    },
                                    heroTag: 'age--',
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 30,
                                    ),
                                    backgroundColor: Colors.grey[600],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    var result = weight_Controller / pow(height_Controller/100,2);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI_Result(result: result.round(),age: age_Controller,gender: isMale?"Male":"Female",)));
                    // print(result);
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFEC244F)),
                    fixedSize: MaterialStateProperty.all(
                        Size(40, 70)), // Set the desired width and height
                  ),
                ))
          ],
        ));
  }
}