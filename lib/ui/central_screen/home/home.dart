import 'package:flutter/material.dart';
import 'package:patientapp/models/user.dart';
import 'package:patientapp/ui/central_screen/home/medications_for_today/medications_for_today.dart';
import 'package:patientapp/ui/central_screen/home/patient_profile/patient_profile.dart';
import 'package:patientapp/ui/central_screen/home/recent_labs/recent_labs.dart';
import 'package:patientapp/ui/central_screen/home/upcoming_appointments/upcoming_appointments.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> notifications = <Widget>[
    UpcomingAppointments(),
    RecentLabs(),
    MedicationsForToday(),
  ];

  Widget appBarTitle(BuildContext context) {
    var patientName = context.watch<UserModel>().name;
    if (patientName == null) {
      return Text("Hi :)");
    } else {
      return Text("Hi $patientName!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle(context),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: notifications.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 4.0),
                  child: Container(
                    child: notifications[index],
                    padding: EdgeInsets.all(2),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void patientProfileSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
        ),
        child: Center(
          child: DraggableScrollableSheet(
            initialChildSize: .95,
            maxChildSize: .95,
            minChildSize: .9,
            builder: (BuildContext context, ScrollController scrollController) {
              return PatientProfile();
            },
          ),
        ),
      ),
    );
  }
}
