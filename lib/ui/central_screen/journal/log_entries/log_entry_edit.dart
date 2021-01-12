import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/central_screen/journal/log_entry.dart';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController ailmentController =
        TextEditingController(text: widget.entry.subject);
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
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back(
                      result: LogEntry(dateStamp: widget.entry.dateStamp),
                    );
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
