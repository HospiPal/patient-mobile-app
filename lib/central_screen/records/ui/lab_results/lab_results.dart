import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabResults extends StatefulWidget {
  @override
  _LabResultsState createState() => _LabResultsState();
}

class _LabResultsState extends State<LabResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Results'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: ListTile(
                  onTap: () {},
                  title: Text('Covid Antibody Test'),
                  subtitle: Text('7/14'),
                  leading: const Icon(Icons.assignment_turned_in),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
