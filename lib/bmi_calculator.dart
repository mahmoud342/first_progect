

import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          //first section in the screen.
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.accessible_forward_outlined,
                            size: 70,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      //color: Colors.red,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey[400],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.accessible_forward_outlined,
                          size: 70,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ],
              ),
            ),
          ),
          //second section in the screen.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10,),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    //height
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic ,
                      children: [
                        //180
                        Text(
                          '180',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                          ),
                        ),
                        //CM
                        Text(
                          'CM',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize:20,
                          ),
                        ),
                      ],
                    ),
                    //slider
                    Slider(
                      min: 80,
                      max: 220,
                      value: 120,
                      onChanged: (value) {
                        print(value.round()); //to print int number.
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          //third section in the screen.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '180',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){

                                },
                                child: const Icon(
                                    Icons.remove
                                ),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: (){

                                },
                                child: const Icon(
                                    Icons.add
                                ),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '180',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 40,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){

                                  },
                                  child: const Icon(
                                      Icons.remove
                                  ),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){

                                  },
                                  child: const Icon(
                                      Icons.add
                                  ),
                                  mini: true,
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
          //last section in the screen.(button).
          Padding(
            padding: const EdgeInsets.only(
              bottom:5,
              right: 5,
              left: 5,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
              width: double.infinity,
              // color: Colors.blue,
              child: MaterialButton(
                height: 50,
                onPressed: (){},
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
