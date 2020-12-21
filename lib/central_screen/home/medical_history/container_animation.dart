import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryFullView extends StatefulWidget {
  @override
  _HistoryFullViewState createState() => _HistoryFullViewState();
}

class _HistoryFullViewState extends State<HistoryFullView> {
  double height;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Title",
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      children: <Widget>[
        ExpansionTile(
          title: Text(
            'Sub title',
          ),
          children: <Widget>[
            ListTile(
              title: Text('data'),
            )
          ],
        ),
        ListTile(
          title: Text('data'),
        )
      ],
    );
  }
}
