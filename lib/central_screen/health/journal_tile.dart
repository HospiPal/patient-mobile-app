import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/health/log_entry.dart';

import '../../navigation.dart';

class JournalTile extends StatefulWidget {
  LogEntry entry;

  JournalTile(this.entry);

  @override
  _JournalTileState createState() => _JournalTileState();
}

class _JournalTileState extends State<JournalTile> {
  void buttonPress(BuildContext context) async {
    final result = await Navigator.pushNamed(context, Routes.logEntryView,
        arguments: EntryArg(widget.entry));
    if (result != null) {
      setState(() {
        widget.entry = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        buttonPress(context);
      },
      title: Text(widget.entry.date),
      subtitle: Text(widget.entry.ailment),
      leading: const Icon(Icons.local_hospital),
    );
  }
}

class EntryArg {
  final LogEntry entry;

  EntryArg(this.entry);
}