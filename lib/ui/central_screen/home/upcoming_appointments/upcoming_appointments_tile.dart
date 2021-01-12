import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentsTile extends StatefulWidget {
  @override
  _UpcomingAppointmentsTileState createState() =>
      _UpcomingAppointmentsTileState();

  final String appointmentType;
  final String date;

  UpcomingAppointmentsTile(this.appointmentType, this.date);
}

class _UpcomingAppointmentsTileState extends State<UpcomingAppointmentsTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.schedule,
                color: Theme.of(context).accentColor,
              ),
              Text(widget.appointmentType),
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
