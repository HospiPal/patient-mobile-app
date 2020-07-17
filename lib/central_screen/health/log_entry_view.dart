import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/health/log_entry.dart';

import '../../navigation.dart';
import 'journal_tile.dart';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController ailmentController =
        new TextEditingController(text: 'Ailment ' + widget.entry.ailment);
    TextEditingController dateController =
        new TextEditingController(text: 'Physician: ' + widget.entry.physician);
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Physician:  ' + widget.entry.physician),
              Text('Ailment: ' + widget.entry.ailment),
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
    ));
  }

  void buttonPress(BuildContext context) async {
    final result = await Navigator.pushNamed(context, Routes.logEntryEdit,
        arguments: EntryArg(widget.entry));
    if (result != null) {
      setState(() {
        widget.entry = result;
        Navigator.pop(context, widget.entry);
      });
    }
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
        labelText: widget.title,
      ),
    );
  }
}
