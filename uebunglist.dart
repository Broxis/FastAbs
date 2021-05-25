import 'package:flutter/material.dart';
import 'Beginner.dart';
import 'workouts.dart';



class Uebunglist extends StatelessWidget {


static List<String> uebungen = Workouts.beginner;


  @override
  Widget build(BuildContext context) {
    return Container(height: 210, child: Scrollbar(child: ListView.builder(
      shrinkWrap: true,
      
      itemBuilder: (ctx, index) {
        return Card(
            child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text(
             '${uebungen[index]}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
          )
        ]));
      },
      itemCount: uebungen.length,
    )));
  }
}
