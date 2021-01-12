import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'medications_for_today_tile.dart';

class MedicationsForToday extends StatefulWidget {
  @override
  _MedicationsForTodayState createState() => _MedicationsForTodayState();
}

class _MedicationsForTodayState extends State<MedicationsForToday> {
  final List<MedicationsForTodayTile> appointments = <MedicationsForTodayTile>[
    MedicationsForTodayTile("Dupixent", "50 Mg"),
    MedicationsForTodayTile("Norethindrone", "20 Mg, Twice a day"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Medication For Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)
                //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.4),
                ),
          ),
          getAppointmentCards(),
        ],
      ),
    );
  }

  Widget getAppointmentCards() {
    if (appointments.length > 0) {
      return Column(children: appointments);
    } else {
      return Container(
        child: Text("No Upcoming Appointments"),
        margin: EdgeInsets.symmetric(vertical: 10.0),
      );
    }
  }
}
