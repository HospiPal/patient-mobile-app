import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/views/central_screen/home/medical_history/patient_notes/patient_notes.dart';
import 'package:patientapp/views/central_screen/home/recent_labs/recent_labs.dart';

class MedicalHistory extends StatefulWidget {
  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();

  final ScrollController scrollController;

  MedicalHistory(this.scrollController);
}

class _MedicalHistoryState extends State<MedicalHistory> {
  List<Widget> patientInfo = <Widget>[
    RecentLabs(),
    PatientNotes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
                child: Text("[Patient]'s History",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19))),
          ),
          Expanded(
            flex: 20,
            child: Container(
              child: ListView.builder(
                controller: widget.scrollController,
                padding: const EdgeInsets.all(8),
                itemCount: patientInfo.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 4.0),
                    child: Container(
                      child: patientInfo[index],
                      padding: EdgeInsets.all(2),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
