import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/records/medications/medication_info.dart';
import 'package:patientapp/central_screen/records/medications/medication_tile.dart';

class Medications extends StatefulWidget {
  @override
  _MedicationsState createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
  final List<MedicationTile> medicationTiles = <MedicationTile>[
    MedicationTile(),
    MedicationTile(),
  ];
  Color c = Colors.amber;
  final List<MedicationInfo> medications = <MedicationInfo>[
    MedicationInfo(
      name: 'Tylenol',
      daysToTake: <int>[1, 3, 5],
    ),
    MedicationInfo(
      name: 'Tylenol',
      daysToTake: <int>[0, 1, 2, 3, 4, 5],
    ),
  ];
  int selectedDay = -1; //what day is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medications'),
      ),
      body: SafeArea(
        child: Center(
            child: Table(
          //table of medication
          border: TableBorder.all(),
          children: [
            TableRow(
              //days of the week
              children: dateBoxes(selectedDay),
            ),
            TableRow(
              children: medicationBoxes(medications[0]),
            ),
            TableRow(
              children: medicationBoxes(medications[1]),
            )
          ],
        )),
      ),
    );
  }

  List<Container> medicationBoxes(MedicationInfo medication) {
    List colors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple
    ]; //possible colors the medicine can be
    Random random =
        new Random(); //Todo: If a box is a given color, no other row can be that color
    Color col = colors[random.nextInt(colors.length)];
    List<Container> rowOfBoxes = new List<Container>(7);

    for (int i = 0; i < rowOfBoxes.length; i++) {
      //blank if medication should not be taken that day
      rowOfBoxes[i] = new Container();
    }

    for (int i = 0; i < medication.daysToTake.length; i++) {
      //colored if medication should be taken
      if (medication.daysToTake[i] != 7) {
        rowOfBoxes[medication.daysToTake[i]] = new Container(
            color: col,
            child: Text(
              'test',
            ));
      } else {
        rowOfBoxes[medication.daysToTake[0]] = new Container(
            color: col,
            child: Text(
              'test',
            ));
      }
    }
    return rowOfBoxes;
  }

  List<Container> dateBoxes(int columnBordered) {
    List<String> days = ['S', 'M', 'T', 'W', 'Th', 'F', 'Sa'];
    List<Container> rowOfBoxes = new List<Container>(7);

    if (columnBordered < 0) {
      //will be -1 by default so the default selected is the given day
      columnBordered = DateTime.now().weekday;
    }

    for (int i = 0; i < rowOfBoxes.length; i++) {
      if (i == columnBordered) {
        //if this is the day selected
        rowOfBoxes[i] = new Container(
          child: InkWell(
            child: Center(
              child: Text(
                days[i],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                selectedDay = i;
              });
            },
          ),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.blue,
                width: 5.0,
              ),
              right: BorderSide(
                color: Colors.blue,
                width: 5.0,
              ),
              top: BorderSide(
                color: Colors.blue,
                width: 5.0,
              ),
            ),
          ),
        );
      } else {
        rowOfBoxes[i] = new Container(
          child: InkWell(
            child: Center(
              child: Text(
                days[i],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              setState(() {
                selectedDay = i;
              });
            },
          ),
        );
      }
    }
    return rowOfBoxes;
  }
}