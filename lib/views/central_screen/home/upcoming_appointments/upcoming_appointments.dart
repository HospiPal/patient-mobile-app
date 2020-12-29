import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/views/central_screen/home/upcoming_appointments/upcoming_appointments_tile.dart';

class UpcomingAppointments extends StatefulWidget {
  @override
  _UpcomingAppointmentsState createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  final List<UpcomingAppointmentsTile> appointments =
      <UpcomingAppointmentsTile>[
    UpcomingAppointmentsTile("Consultation", "8/11/20"),
    UpcomingAppointmentsTile("Procedure", "8/22/20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Upcoming Appointments",
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
      return new Column(children: appointments);
    } else {
      return Container(
        child: Text("No Upcoming Appointments"),
        margin: new EdgeInsets.symmetric(vertical: 10.0),
      );
    }
  }
}
