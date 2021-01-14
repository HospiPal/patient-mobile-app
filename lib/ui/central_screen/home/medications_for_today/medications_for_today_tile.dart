import 'package:flutter/material.dart';

class MedicationsForTodayTile extends StatelessWidget {
  final String medication;
  final String dose;

  MedicationsForTodayTile(this.medication, this.dose);

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
              Text(medication),
              Text(dose),
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
