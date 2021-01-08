import 'package:flutter/material.dart';

class PatientProfile extends StatefulWidget {
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.face,
                size: 80,
                color: Theme.of(context).accentColor,
              ),
              radius: 50.0,
            ),
            Text(
              'Dr. Marc Mulligan',
              style: TextStyle(
                //fontFamily: 'Pacifico',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Work Phone',
                  ),
                  subtitle: Text(
                    '+847 830 9221',
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Email',
                  ),
                  subtitle: Text(
                    'arana@urmc.rochester.edu',
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.domain,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Address',
                  ),
                  subtitle: Text(
                    '500 Fraternity Rd, Rochester, NY',
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.schedule,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Schedule an Appointment',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
