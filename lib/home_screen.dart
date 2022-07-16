import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //List<int> i= [1,2,3,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         leading: Icon(
           Icons.menu,
         ),
         title: Text("المحروسة ماركت"),
         actions: [
           IconButton(
             onPressed: () {
               print("search btn clicked");
             },
             icon: Icon(Icons.search),
           ),

           IconButton(
             icon: Icon(
               Icons.notification_important,
             ),
             onPressed: onNotification,
           ),
           //Icon(Icons.notification_important),
         ],
         centerTitle: true,
         elevation: 2, //shadow below appBar
       ),
      body:Column(
        children: [
          Container(
            width: 200,
            padding: EdgeInsetsDirectional.all(20),
            child: Container(
              //wrapping the Stack with Container to use decoration att.
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // borderRadius: BorderRadiusDirectional.only(
                //   topStart: Radius.circular(20),
                // ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer ,
              child: Stack(                                          //child: Padding(padding: const EdgeInsets.all(8.0), //when you want to wrap with padding Widget.
                alignment:Alignment.bottomCenter,
                children: [
                  Image(
                    image:NetworkImage(
                        'https://cdn.motor1.com/images/mgl/mrz1e/s3/coolest-cars-feature.webp'
                    ),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover ,

                  ),
                  Container(
                    width: double.infinity, //infinity of it that the infinity of stack = inifinity of the width of screen .
                    color: Colors.red.withOpacity(0.6),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      //horizontal: 10,
                    ),
                    child: Text(
                      'elmahrousa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      );
  }

  void onNotification() {
    print("notification clicked");
  }
}
