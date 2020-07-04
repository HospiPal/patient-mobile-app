import 'package:flutter/material.dart';

import '../../../navigation.dart';
import '../journal_tile.dart';

class EntryList {
  final List<JournalTile> entries = <JournalTile>[];

  newTile(JournalTile tile) {
    entries.add(tile);
    print(entries[0].entry.ailment);
  }
}

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  //TODO: this List needs to be relocated

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: DropdownButton<String>(
            isExpanded: true,
        //value: dropdownValue,
        icon: Icon(Icons.dehaze),
        iconSize: 24,
        //elevation: 16,
        onChanged: (String newValue) {
          setState(() {
            //dropdownValue = newValue;
          });
        },
        items: <String>[
          'All entries',
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
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: EntryList().entries.length,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 1.0, horizontal: 4.0),
                child: Card(
                    child: EntryList().entries[index]
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, Routes.logEntryAdd);
          setState(() {
            /*EntryList().newTile(
                JournalTile(new LogEntry(
                  ailment: 'free slushy-itus', date: '7/11'
                ))
            );*/
          });
        },
      ),
    );
  }
}