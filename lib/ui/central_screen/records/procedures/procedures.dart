import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/ui/central_screen/records/procedures/procedure_tile.dart';

class Procedures extends StatefulWidget {
  @override
  _ProceduresState createState() => _ProceduresState();
}

class _ProceduresState extends State<Procedures> {
  final List<ProcedureTile> procedures = <ProcedureTile>[
    ProcedureTile(),
    ProcedureTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procedures'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: procedures.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Container(
                  child: procedures[index],
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(4.0),
                      topRight: const Radius.circular(4.0),
                      bottomLeft: const Radius.circular(4.0),
                      bottomRight: const Radius.circular(4.0),
                    ),
                  ),
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
