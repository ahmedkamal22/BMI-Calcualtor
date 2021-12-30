import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BMIScreen extends StatelessWidget {
  Color darkBlue = Color(0xff050c28);
  Color grey = Color(0x62FFFFFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                              Image(image: AssetImage('assets/images/female.png'),
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
                    SizedBox(width: 10,),
                    //second picture[female]
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/female.png'),
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
                  ],
                ),
              ),
            ),
            //second part
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0
                ),
                child: Container(
                  width: double.infinity,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: grey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT",
                      style: TextStyle(
                        fontSize: 20.0
                      ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '180',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50.0,
                              color: Colors.black
                            ),
                          ),
                          Text(
                            'cm',
                          ),
                        ],
                      ),
                      Slider(value: 180,
                          min: 80,
                          max: 220,
                          onChanged: (value){
                            print(value);
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
                                  fontSize: 25.0
                              ),
                            ),
                            Text(
                              '60',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                  color: Colors.black
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){},
                                  child: Icon(Icons.remove,),
                                  backgroundColor: darkBlue,
                                ),
                                SizedBox(width: 15.0,),
                                FloatingActionButton(
                                    onPressed: (){},
                                    child: Icon(Icons.add),
                                    backgroundColor: darkBlue
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
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
                                  fontSize: 25.0
                              ),
                            ),
                            Text(
                              '28',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                  color: Colors.black
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){},
                                  child: Icon(Icons.remove,),
                                  backgroundColor: darkBlue,
                                ),
                                SizedBox(width: 15.0,),
                                FloatingActionButton(
                                    onPressed: (){},
                                    child: Icon(Icons.add),
                                    backgroundColor: darkBlue
                                ),
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
              child: MaterialButton(onPressed: (){},
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
