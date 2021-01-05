//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/views/central_screen/health/log_entries/log_entry_add.dart';
import 'package:patientapp/views/central_screen/health/log_entries/selection_screen/selections.dart';
import 'package:patientapp/views/central_screen/health/log_entry.dart';

import '../date_organizer.dart';
import '../journal_tile.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  //TODO: this List needs to be relocated

  final List<JournalTile> entries = <JournalTile>[
    JournalTile(LogEntry(symptoms: [
      SelectionInList('Dr. Rana'),
      SelectionInList('Dr. Mulligan')
    ], physicians: [
      SelectionInList('Heartburn'),
      SelectionInList('Headache')
    ], dateStamp: DateTime.now()))
  ];
  List<JournalTile> monthsDisplayed = <JournalTile>[
    JournalTile(LogEntry(
        symptoms: [SelectionInList('Heartburn'), SelectionInList('Headache')],
        physicians: [SelectionInList('Heartburn'), SelectionInList('Headache')],
        dateStamp: DateTime.now()))
  ];
  DateOrganizer date = new DateOrganizer();
  List<String> dropDownMonths = <String>[
    'All Entries',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  int currentMonthDisplayed = 0;
  String dropDownValue = 'All Entries';
  List<int> dropDownYears = <int>[
    DateTime.now().year,
    DateTime.now().subtract(Duration(days: 365)).year,
    DateTime.now().subtract(Duration(days: 365 * 2)).year,
    DateTime.now().subtract(Duration(days: 365 * 3)).year,
    DateTime.now().subtract(Duration(days: 365 * 4)).year,
    DateTime.now().subtract(Duration(days: 365 * 5)).year,
  ];
  int currentYearDisplayed = DateTime.now().year;
  int dropDownYearValue = DateTime.now().year;

  void addToEntryList() async {
    final result = await Get.to(LogEntryAdd());

    if (result != null) {
      setState(() {
        entries.add(result);
        if (entries[entries.indexOf(result)].entry.dateStamp.month ==
                currentMonthDisplayed ||
            currentMonthDisplayed == 0) {
          monthsDisplayed.add(result);
        }
      });
    }
  }

  /*void _showModalBottomSheet() {
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
          child: LogEntryAdd(),
          //child: Text("hi"),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //padding: EdgeInsets.all(10),
          title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropDownValue,
              //iconSize: 24,
              //elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  currentMonthDisplayed = dropDownMonths.indexOf(newValue);
                  monthsDisplayed =
                      getTileList(currentMonthDisplayed, currentYearDisplayed);
                  dropDownValue = newValue;
                });
              },
              items:
                  dropDownMonths.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          if (currentMonthDisplayed != 0)
            DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                value: dropDownYearValue,
                //iconSize: 24,
                //elevation: 16,
                onChanged: (int newValue) {
                  setState(() {
                    currentYearDisplayed = newValue;
                    monthsDisplayed = getTileList(
                        currentMonthDisplayed, currentYearDisplayed);
                    dropDownYearValue = newValue;
                  });
                },
                items: dropDownYears.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            ),
        ],
      )),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: monthsDisplayed.length,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return monthsDisplayed[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //_showModalBottomSheet();

          setState(() {
            addToEntryList();
          });
        },
      ),
    );
  }

  List<JournalTile> getTileList(int selectedMonth, int selectedYear) {
    if (selectedMonth == 0) {
      return entries;
    } else {
      List<JournalTile> tileList = <JournalTile>[];
      for (var i = 0; i < entries.length; i++) {
        if (entries[i].entry.dateStamp.month == selectedMonth &&
            entries[i].entry.dateStamp.year == selectedYear) {
          tileList.add(entries[i]);
        }
      }
      return tileList;
    }
  }
}
