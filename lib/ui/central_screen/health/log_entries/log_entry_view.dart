import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/central_screen/health/date_organizer.dart';
import 'package:patientapp/ui/central_screen/health/log_entry.dart';

import 'log_entry_edit.dart';

class LogEntryView extends StatefulWidget {
  LogEntry entry;

  @override
  _LogEntryViewState createState() => _LogEntryViewState();

  LogEntryView({
    Key key,
    @required this.entry,
  }) : super(key: key);
}

class _LogEntryViewState extends State<LogEntryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  EntryContainer('Date:'),
                  Spacer(),
                  EntryContainer(
                      DateOrganizer().getDateStamp(widget.entry.dateStamp)),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  EntryContainer('Physician:'),
                  Spacer(),
                  //EntryContainer(widget.entry.physician),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  EntryContainer('Ailment:'),
                  Spacer(),
                  //EntryContainer(widget.entry.ailment),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  // todo: scale the button without hardcoded values
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    buttonPress(context);
                  },
                  child: Text('Edit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void buttonPress(BuildContext context) async {
    final result = await Get.to(LogEntryEdit(entry: widget.entry));
    if (result != null) {
      setState(() {
        widget.entry = result;
        Get.back(result: widget.entry);
      });
    }
  }
}

class EntryContainer extends StatefulWidget {
  @override
  _EntryContainerState createState() => _EntryContainerState();

  final String text;

  EntryContainer(this.text);
}

class _EntryContainerState extends State<EntryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.text,
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      //width: 150,
      padding: EdgeInsets.all(5),
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
    );
  }
}
