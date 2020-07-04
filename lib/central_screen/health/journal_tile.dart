import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/health/log_entry.dart';

class JournalTile extends StatelessWidget {
  LogEntry entry;

  JournalTile(this.entry);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(entry.date),
      subtitle: Text(entry.ailment),
      leading: const Icon(Icons.local_hospital),
    );
  }
}
