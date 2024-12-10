import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
    runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: BallScreen(),
    );
  }
}

class BallScreen extends StatefulWidget {
  BallScreen({super.key});


  @override
  State<BallScreen> createState() => _BallScreenState();
}

class _BallScreenState extends State<BallScreen> {
  int ballNum = 1;

  void randBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue,
          height: double.infinity,
          child: GestureDetector(
              onTap: randBall,
              child: Image.asset('images/ball$ballNum.png')),
        ));
  }
}
