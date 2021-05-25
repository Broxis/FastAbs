import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'uebunglist.dart';
import 'workouts.dart';

class Workoutscreen extends StatefulWidget {
  @override
  _WorkoutscreenState createState() => _WorkoutscreenState();
}

class _WorkoutscreenState extends State<Workoutscreen> {
  static int _counter = 10;
  int longcounter = 100;
  int longcounterZwei = 100;
  Timer _timer;
  Timer _bildTimer;
  int i = 0;

  static List<String> uebungen2 = Workouts.beginner;
  String currentWorkout;

  gibUebung(int i) {
    currentWorkout = uebungen2[i];
    return currentWorkout;
  }

  void _startTimer() {
    _counter = 10;

    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          _counter = 10;
        }
      });
    });
  }

  void _startCountdown() {
    longcounter = 100;

    _startTimer();
    _showUebung();
    _bildTimer = Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        if (longcounter > 0) {
          longcounter = longcounter - 10;
          _startTimer();
        } else {
          _bildTimer.cancel();
        }
      });
    });
  }

  void _showUebung() {
    longcounterZwei = 100;
    i = 0;

    _bildTimer = Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        if (longcounterZwei > 0) {
          longcounterZwei = longcounterZwei - 10;
          i++;
          gibUebung(i);
        } else {
          _bildTimer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$currentWorkout',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),
            ),
            RaisedButton(
              onPressed: () => _startCountdown(),
              child: Text("Start 10 second count down"),
            ),
          ],
        ),
      ),
    );
  }
}
