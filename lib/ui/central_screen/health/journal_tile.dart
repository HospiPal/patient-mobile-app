import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/central_screen/health/log_entries/log_entry_add.dart';
import 'package:patientapp/ui/central_screen/health/log_entries/selection_screen/selections.dart';
import 'package:patientapp/ui/central_screen/health/log_entry.dart';

import 'date_organizer.dart';

class JournalTile extends StatefulWidget {
  LogEntry entry;

  JournalTile(this.entry);

  @override
  _JournalTileState createState() => _JournalTileState();
}

class _JournalTileState extends State<JournalTile> {
  DateOrganizer date = new DateOrganizer();

  void buttonPress(BuildContext context) async {
    final entry =
        await Get.to(LogEntryAdd(), arguments: EntryArg(widget.entry));
    setState(() {
      widget.entry = entry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(date.getDateStamp(widget.entry.dateStamp)),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: 100,
                            height: 100,
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            if (widget.entry.subject != null)
                              Text("\"" + widget.entry.subject + "\"",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            if (widget.entry.symptoms != null)
                              Container(
                                //width: 100,
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  children: chipList(widget.entry.symptoms),
                                ),
                              ),
                            if (widget.entry.severity != null &&
                                widget.entry.severity.length > 0)
                              Text("Severity: " + widget.entry.severity[0].data,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            if (widget.entry.physicians != null)
                              Wrap(
                                direction: Axis.horizontal,
                                children: chipList(widget.entry.physicians),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              buttonPress(context);
            },
          ),
        ),
      ),
    );
  }

  List<Chip> chipList(List<SelectionInList> itemList) {
    List<Chip> listOfChips = new List();
    for (int i = 0; i < itemList.length; i++) {
      listOfChips.add(Chip(
        label: Text(itemList[i].data),
      ));
    }
    return listOfChips;
  }
}

class SelectedChip extends StatelessWidget {
  final String title;

  SelectedChip(this.title);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
    );
  }
}

class EntryArg {
  final LogEntry entry;

  EntryArg(this.entry);
}
