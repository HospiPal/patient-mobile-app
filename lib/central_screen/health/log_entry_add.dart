import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/health/journal_tile.dart';
import 'package:patientapp/central_screen/health/log_entry.dart';

class LogEntryAdd extends StatefulWidget {
  @override
  _LogEntryAddState createState() => _LogEntryAddState();
}

class _LogEntryAddState extends State<LogEntryAdd> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController ailmentController = new TextEditingController();
  TextEditingController dateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'First Name'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Last Name'),
              ),
              LogEntryField('Date', dateController),
              LogEntryField('Condition', ailmentController),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  // todo: scale the button without hardcoded values
                  color: Theme
                      .of(context)
                      .primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    LogEntry entry = new LogEntry(
                        ailment: ailmentController.text,
                        date: dateController.text);
                    JournalTile tile = JournalTile(entry);
                    if (tile.entry.ailment != '') {
                      Navigator.pop(context, tile);
                    } else {
                      Navigator.pop(context, null);
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
              ),
            ),
          ),
        ));
  }
}

class LogEntryField extends StatefulWidget {
  @override
  LogEntryFieldState createState() => LogEntryFieldState();

  final String title;
  final TextEditingController textController;

  LogEntryField(this.title, this.textController);
}

class LogEntryFieldState extends State<LogEntryField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      decoration: InputDecoration(
        labelText: widget.title,),
    );
  }
}
