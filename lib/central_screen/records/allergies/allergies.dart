import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/records/allergies/allergy_tile.dart';

import 'allergy_tile.dart';

class Allergies extends StatefulWidget {
  @override
  _AllergiesState createState() => _AllergiesState();
}

class _AllergiesState extends State<Allergies> {
  final List<AllergyTile> conditions = <AllergyTile>[
    AllergyTile(),
    AllergyTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Allergies'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: conditions.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Container(
                  child: conditions[index],
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
