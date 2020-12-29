import 'package:flutter/material.dart';
import 'package:patientapp/navigation.dart';

class Records extends StatefulWidget {
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.bug_report,
                        color: Theme.of(context).accentColor,
                        //MdiIcons.sword,
                        //color: Theme.of(context).accentColor,
                      ),
                      Text('Allergies')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.allergies);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.hdr_strong,
                        color: Theme.of(context).accentColor,
                      ),
                      Text('Conditions')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.conditions);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: Theme.of(context).accentColor,
                      ),
                      Text('Immunizations')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.immunizations);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.graphic_eq,
                        color: Theme.of(context).accentColor,
                      ),
                      Text('Lab Results')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.labResults);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.bubble_chart,
                        color: Theme.of(context).accentColor,
                      ),
                      Text('Medications')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.medications);
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: InkWell(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.healing,
                        color: Theme.of(context).accentColor,
                      ),
                      Text('Procedures')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.procedures);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
