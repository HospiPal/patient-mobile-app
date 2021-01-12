import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'immunization_tile.dart';

class Immunizations extends StatefulWidget {
  @override
  _ImmunizationsState createState() => _ImmunizationsState();
}

class _ImmunizationsState extends State<Immunizations> {
  final List<ImmunizationTile> immunizations = <ImmunizationTile>[
    ImmunizationTile(),
    ImmunizationTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Immunizations'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: immunizations.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Container(
                  child: immunizations[index],
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
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
