
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
  final List<MedicationInfo> medications = <MedicationInfo>[
    MedicationInfo(
      name: 'Tylenol',
      daysToTake: <int>[1, 3, 4, 5],
    ),
    MedicationInfo(
      name: 'heroin',
      daysToTake: <int>[0, 2, 3, 4, 5],
    ),
    MedicationInfo(
      name: 'Beta Blocker',
      daysToTake: <int>[1, 3, 5],
    ),
    MedicationInfo(
      name: 'Insulin',
      daysToTake: <int>[0, 6],
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
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              //color: Colors.amber[500],
              //child: const Center(child: Text('Entry B')),
            ),
            medTable(),
            Container(
              height: 100,
              //color: Colors.amber[500],
              //child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );
  }

  Table medTable() {
    List<TableRow> rowsOfTable = new List<TableRow>(medications.length + 1);
    for (int i = 0; i < medications.length + 1; i++) {
      if (i == 0) {
        rowsOfTable[i] = TableRow(
            //days of the week
            decoration: BoxDecoration(color: Colors.grey[200]),
            children: dateBoxes(selectedDay));
      } else if (i == medications.length) {
        rowsOfTable[i] = TableRow(
          children: medicationBoxes(
              medications[medications.length - 1], selectedDay, true),
        );
      } else {
        rowsOfTable[i] = TableRow(
          children: medicationBoxes(medications[i - 1], selectedDay, false),
        );
      }
    }
    Table medTable = Table(
      children: rowsOfTable,
    );
    return medTable;
  }

  List<Container> medicationBoxes(
      MedicationInfo medication, int columnBordered, bool isBottom) {
    double boxHeight = 30;
    Color col =
        Theme.of(context).accentColor; //colors[random.nextInt(colors.length)];
    List<Container> rowOfBoxes = new List<Container>(7);

    for (int i = 0; i < rowOfBoxes.length; i++) {
      //blank if medication should not be taken that day
      rowOfBoxes[i] = new Container(
        child: Text(''),
        width: 50,
        //height: 50,
      );
    }

    for (int i = 0; i < medication.daysToTake.length; i++) {
      //colored if medication should be taken
      if (medication.daysToTake[i] != 7) {
        rowOfBoxes[medication.daysToTake[i]] = new Container(
          child: Text(''),
          height: boxHeight,
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                )
            ),
            color: col,
          ),
        );
      } else {
        rowOfBoxes[medication.daysToTake[0]] = new Container(
          color: col,
          height: boxHeight,
          child: Text(''),
        );
      }
      if (columnBordered < 0) {
        //will be -1 by default so the default selected is the given day

        if (DateTime
            .now()
            .weekday == 7) {
          columnBordered = 0;
        } else {
          columnBordered = DateTime
              .now()
              .weekday;
        }
      }
    }
    for (int i = 0; i < rowOfBoxes.length; i++) {
      if (i == columnBordered) {
        if (isBottom) {
          Container temp = rowOfBoxes[i];
          rowOfBoxes[i] = new Container(
            child: temp,
            height: boxHeight,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme
                      .of(context)
                      .backgroundColor,
                  width: 5.0,
                ),
                right: BorderSide(
                  color: Theme
                      .of(context)
                      .backgroundColor,
                  width: 5.0,
                ),
                bottom: BorderSide(
                  color: Theme
                      .of(context)
                      .backgroundColor,
                  width: 5.0,
                ),
              ),
            ),
          );
        } else {
          Container temp = rowOfBoxes[i];
          rowOfBoxes[i] = new Container(
            child: temp,
            height: boxHeight,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme
                      .of(context)
                      .backgroundColor,
                  width: 5.0,
                ),
                right: BorderSide(
                  color: Theme
                      .of(context)
                      .backgroundColor,
                  width: 5.0,
                ),
              ),
            ),
          );
        }
      }
    }

    return rowOfBoxes;
  }

  List<Container> dateBoxes(int columnBordered) {
    List<String> days = ['S', 'M', 'T', 'W', 'Th', 'F', 'Sa'];
    List<Container> rowOfBoxes = new List<Container>(7);

    if (columnBordered < 0) {
      //will be -1 by default so the default selected is the given day

      if (DateTime
          .now()
          .weekday == 7) {
        columnBordered = 0;
      } else {
        columnBordered = DateTime
            .now()
            .weekday;
      }
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
                color: Theme
                    .of(context)
                    .backgroundColor,
                width: 5.0,
              ),
              right: BorderSide(
                color: Theme
                    .of(context)
                    .backgroundColor,
                width: 5.0,
              ),
              top: BorderSide(
                color: Theme
                    .of(context)
                    .backgroundColor,
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

  Table medInfoTable() {
    return Table(
      children: [
        TableRow()
      ],
    );
  }
}
