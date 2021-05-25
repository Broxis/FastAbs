import 'package:flutter/material.dart';
import 'BottomAppBarxx.dart';
import 'Constants.dart';
import 'Beginner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FastAbs',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.amber,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FastAbs'),
        actions: <Widget>[
          PopupMenuButton<String>(
            color: Colors.blueGrey,
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        child: BottomAppBarxx(),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Beginner()),);
            },
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/bauchmuskel1.jpg',
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              margin:
                  const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 10),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Beginner()),);
            },
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/bauchmuskel2.jpg',
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              margin:
                  const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Beginner()),);
            },
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/bauchmuskel3.jpg',
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              margin:
                  const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 5),
            ),
          ),
        ],
      )),
    );
  }

  void choiceAction(String choice) {
    print('Working');
  }
}
