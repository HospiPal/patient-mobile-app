import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentLabsTile extends StatefulWidget {
  @override
  _RecentLabsTileState createState() => _RecentLabsTileState();

  final String labType;
  final String date;

  RecentLabsTile(this.labType, this.date);
}

class _RecentLabsTileState extends State<RecentLabsTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.graphic_eq,
                color: Theme.of(context).accentColor,
              ),
              Text(widget.labType),
              Text(widget.date),
            ],
          ),
          margin: EdgeInsets.symmetric(vertical: 25.0),
          width: 500,
        ),
        onTap: () {
          //_showModalBottomSheet(context);
        },
      ),
    );
  }
}
