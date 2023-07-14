import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int fortune = 1;
  void changeFortune() {
    fortune = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: () {
        setState(() {
          changeFortune();
        });
      },
      child: Image.asset('images/ball$fortune.png'),
    ));
  }
}
