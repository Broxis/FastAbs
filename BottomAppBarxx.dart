import 'package:flutter/material.dart';

class BottomAppBarxx extends StatelessWidget {

  

@override
Widget build(BuildContext context) {
  return Row(
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.blueGrey,
                    ),
                    onPressed: null,
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Colors.blueGrey,
                      ),
                      onPressed: null),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Colors.blueGrey,
                      ),
                      onPressed: null),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Colors.blueGrey,
                      ),
                      onPressed: null),
                ],
              ),
            ),
          ],
        );
}

}