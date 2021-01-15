import 'package:flutter/material.dart';
import 'package:patientapp/models/medications.dart';
import 'package:provider/provider.dart';

import 'medications_for_today_tile.dart';

class MedicationsForToday extends StatelessWidget {
  // final List<MedicationsForTodayTile> appointments = <MedicationsForTodayTile>[
  //   MedicationsForTodayTile("Dupixent", "50 Mg"),
  //   MedicationsForTodayTile("Norethindrone", "20 Mg, Twice a day"),
  // ];

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
          appointmentCards(context),
        ],
      ),
    );
  }

  Widget appointmentCards(BuildContext context) {
    final appointments = context
        .select<MedicationsModel, List<MedicationModel>>(
            (medicationsModel) => medicationsModel.medications)
        .map((medicationModel) =>
            MedicationsForTodayTile(medicationModel.name, medicationModel.dose))
        .toList();

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
