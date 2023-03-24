import 'dart:developer';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDieNum = 1;
  int rightDieNum = 4;
  int count = 0;

  changeRightDieNum() {
    setState(() {
      // leftDieNum = Random().nextInt(6) + 1;
      rightDieNum = Random().nextInt(6) + 1;
      if (leftDieNum == rightDieNum) {
        count++;
      }
    });
  }

  changeLeftDieNum() {
    setState(() {
      // leftDieNum = Random().nextInt(6) + 1;
      leftDieNum = Random().nextInt(6) + 1;
      if (leftDieNum == rightDieNum) {
        count++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Text(
                'Score: $count',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    // flex: 2,
                    // child: Image(
                    // width: 200.0,
                    // height: 200.0,
                    child: TextButton(
                      /*onPressed: () {
                        setState(() {
                          leftDieNum = Random().nextInt(6) + 1;
                        });
                      },*/
                      onPressed: changeLeftDieNum,
                      child: Image.asset('Assets/images/$leftDieNum.png'),
                    ),
                  ),
                  Expanded(
                    // flex: 1,
                    child: TextButton(
                      /*onPressed: () {
                        setState(() {
                          rightDieNum = Random().nextInt(6) + 1;
                          // rightDieNum = changeDieNum();
                        });
                      },*/
                      onPressed: changeRightDieNum,
                      child: Image.asset('Assets/images/$rightDieNum.png'),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}
