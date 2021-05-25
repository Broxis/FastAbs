import 'package:FastAbs/uebunglist.dart';
import 'package:FastAbs/workoutscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'uebunglist.dart';

class Beginner extends StatefulWidget {
  @override
  _BeginnerState createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  String dropdownValue = 'Keine';
  var workoutZeit = 0;
  var finalworkoutZeit = 0;

  final List<String> uebungen1 = Uebunglist.uebungen;
  workoutZeitberechnen(var workoutZeit) {
    if (dropdownValue == 'Keine') {
      workoutZeit = uebungen1.length * 30 +uebungen1.length *0;
      return workoutZeit;
    }
    if (dropdownValue == '5 sec.') {
      workoutZeit = uebungen1.length * 30 +uebungen1.length *5;
      
      return workoutZeit;
    }
    if (dropdownValue == '10 sec.') {
      workoutZeit = uebungen1.length * 30 +uebungen1.length *10;
      return workoutZeit;
    }
    if (dropdownValue == '15 sec.') {
      workoutZeit = uebungen1.length * 30 +uebungen1.length *15;
      return workoutZeit;
    }
    if (dropdownValue == '30 sec.') {
      workoutZeit = uebungen1.length * 30 +uebungen1.length *30;
      return workoutZeit;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beginner'),
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bauchmuskel1.jpg'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${finalworkoutZeit.toString()} Sekunden',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2.5),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 0,
                              style: TextStyle(color: Colors.blueGrey),
                              underline: Container(
                                height: 2,
                                color: Colors.blueGrey,
                              ),
                              onChanged: (String newValue) {
                                
                                setState(() {
                                  dropdownValue = newValue;
                                  finalworkoutZeit = workoutZeitberechnen(workoutZeit);
                                  
                                });
                              },
                              items: <String>[
                                'Keine',
                                '5 sec.',
                                '10 sec.',
                                '15 sec.',
                                '30 sec.'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '${uebungen1.length} Übungen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Uebunglist(),
              Container(
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      // Respond to button press
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Workoutscreen()),);
            
                      
                    },
                    child: Text("START WORKOUT"),
                  )),
            ],
          ),
        ));
  }
}
