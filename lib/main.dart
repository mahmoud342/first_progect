import 'package:flutter/material.dart';
import 'package:untitled/users_screen.dart';
//import library package .

import 'bmi_calculator.dart';
import 'counter_screen.dart';
import 'login_screen.dart';

void main() {
  // MyApp app = MyApp();
  // runApp(app);
  //=runApp(MyApp()); //because you dont need to save the obj. in var.
  runApp(MyApp());
}
//two basic classes flutter widgets
//Stateless
//Stateful
//this two widget classes is inhernt from widget class

//MyApp class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('hello',),  //this is the previous value of home that was aplace holder of home_screen.
      //home_attribute get more than value. //HomeScreen-> HomeScreen home =HomeScreen(); //arguments of constructor.
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
