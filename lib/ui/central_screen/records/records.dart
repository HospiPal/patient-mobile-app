import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/central_screen/records/lab_results/lab_results.dart';
import 'package:patientapp/ui/central_screen/records/procedures/procedures.dart';

import 'allergies/allergies.dart';
import 'conditions/conditions.dart';
import 'immunizations/immunizations.dart';
import 'medications/medications.dart';

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
                  Get.to(Allergies());
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
                  Get.to(Conditions());
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
                  Get.to(Immunizations());
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
                  Get.to(LabResults());
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
                  Get.to(Medications());
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
                  Get.to(Procedures());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
