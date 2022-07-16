
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter =0 ;

  @override
  initState(){
    super.initState(); //to get this class th initial state that it start from it .
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text(
          'Counter',
        ),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: ()
                {
                  setState(() {}); //this method rebuild the build method.
                  counter--;
                  print(counter);
                },
                child: const Text(
                  'Minus',
                ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                //'2',
                '$counter',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight:FontWeight.w900,

                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState( () {
                  counter++;
                  print(counter); //tnf3 gwahom w tnf3 brahom
                });
              },
              child: const Text(
                'Plus',
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
