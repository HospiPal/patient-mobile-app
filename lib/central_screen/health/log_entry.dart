import 'package:flutter/material.dart';

class LogEntry extends StatefulWidget {
  @override
  _LogEntryState createState() => _LogEntryState();
}

class _LogEntryState extends State<LogEntry> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Patient of the week'),
      subtitle: Text('#54'),
      onTap: () {
        print('Tapped');
      },
      onLongPress: () {
        print('Long pressed');
      },
    );
  }
}
