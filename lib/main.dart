import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int answerBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
              answerBall = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$answerBall.png'),
        ),
      ),
    );
  }
}
