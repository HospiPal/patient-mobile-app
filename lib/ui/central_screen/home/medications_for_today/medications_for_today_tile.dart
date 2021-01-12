import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicationsForTodayTile extends StatefulWidget {
  @override
  _MedicationsForTodayTileState createState() =>
      _MedicationsForTodayTileState();

  final String medication;
  final String dose;

  MedicationsForTodayTile(this.medication, this.dose);
}

class _MedicationsForTodayTileState extends State<MedicationsForTodayTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                color: Theme.of(context).accentColor,
              ),
              Text(widget.medication),
              Text(widget.dose),
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
