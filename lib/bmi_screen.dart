import 'dart:math';

import 'package:bmi_calcualtor/bmi_result.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  Color darkBlue = const Color(0xff050c28);

  Color grey = const Color(0x62FFFFFF);
  bool isMale = true;
  double height = 120.0;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.grey[300]),
        ),
        centerTitle: true,
        backgroundColor: darkBlue,
      ),
      body: Container(
        color: darkBlue,
        child: Column(
          children: [
            //first part
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    //first picture[male]
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale ? Colors.blue : grey),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 80,
                                width: 80,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //second picture[female]
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale ? grey : Colors.blue),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 80,
                                width: 80,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //second part
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), color: grey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.grey[300]),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 50.0,
                                color: Colors.black),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.grey[300]),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: Colors.black,
                        inactiveColor: Colors.blue,
                        thumbColor: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            ),
            //third part
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.grey[300]),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                  color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight == 0) {
                                        weight++;
                                      } else {
                                        weight--;
                                      }
                                    });
                                  },
                                  child: Icon(Icons.remove,
                                      color: Colors.grey[300]),
                                  mini: true,
                                  backgroundColor: darkBlue,
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child:
                                      Icon(Icons.add, color: Colors.grey[300]),
                                  backgroundColor: darkBlue,
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.grey[300]),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                  color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age == 0) {
                                        age++;
                                      } else {
                                        age--;
                                      }
                                    });
                                  },
                                  child: Icon(Icons.remove,
                                      color: Colors.grey[300]),
                                  mini: true,
                                  backgroundColor: darkBlue,
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add,
                                        color: Colors.grey[300]),
                                    mini: true,
                                    backgroundColor: darkBlue),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //forth part
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 60.0,
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  BMIRESULT(
                                    age: age,
                                    height: height.round(),
                                    result: result.round(),
                                    isMale: isMale,
                                    weight: weight,
                                  ),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          }));
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
