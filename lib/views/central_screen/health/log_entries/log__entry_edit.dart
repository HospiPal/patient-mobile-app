import 'package:flutter/material.dart';
import 'package:patientapp/views/central_screen/health/log_entry.dart';

class LogEntryEdit extends StatefulWidget {
  final LogEntry entry;

  @override
  _LogEntryEditState createState() => _LogEntryEditState();

  LogEntryEdit({
    Key key,
    @required this.entry,
  }) : super(key: key);
}

class _LogEntryEditState extends State<LogEntryEdit> {
  @override
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController ailmentController =
        new TextEditingController(text: widget.entry.subject);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LogEntryField('Condition', ailmentController),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  // todo: scale the button without hardcoded values
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    LogEntry entry =
                        new LogEntry(dateStamp: widget.entry.dateStamp);

                    Navigator.pop(context, entry);
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
        labelText: widget.title,
      ),
    );
  }
}
