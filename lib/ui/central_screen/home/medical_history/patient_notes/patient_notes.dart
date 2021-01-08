import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../container_animation.dart';

class PatientNotes extends StatefulWidget {
  @override
  _PatientNotesState createState() => _PatientNotesState();
}

class _PatientNotesState extends State<PatientNotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black),
          bottom: BorderSide(width: 1.0, color: Colors.black),
        ),
      ),
      child: HistoryFullView(),
    );
  }
}
