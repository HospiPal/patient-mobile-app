import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/views/central_screen/home/recent_labs/recent_labs_tile.dart';

class RecentLabs extends StatefulWidget {
  @override
  _RecentLabsState createState() => _RecentLabsState();
}

class _RecentLabsState extends State<RecentLabs> {
  final List<RecentLabsTile> recentLabs = <RecentLabsTile>[
    RecentLabsTile("COVID-19", "6/05/20"),
    RecentLabsTile("Blood Work", "4/14/20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Recent Lab Results",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)
                //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.4),
                ),
          ),
          getRecentLabResultCards(),
        ],
      ),
    );
  }

  Widget getRecentLabResultCards() {
    if (recentLabs.length > 0) {
      return new Column(children: recentLabs);
    } else {
      return Container(
        child: Text("No Recent Labs"),
        margin: new EdgeInsets.symmetric(vertical: 10.0),
      );
    }
  }
}
