import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/views/central_screen/health/log_entries/log_entry_add.dart';

import '../profile.dart';

class CareTeam extends StatefulWidget {
  @override
  _CareTeamState createState() => _CareTeamState();
}

// TODO: add scheduling appointments
class _CareTeamState extends State<CareTeam> {
  List<String> names = [
    'Dr. Marc Mulligan',
    'Dr. Spencer Gray',
    'Dr. Deric Toro',
    'Dr. Maddy Candella'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            itemCount: 4,
            itemBuilder: (context, index) {
              //TODO: look into resizing the card
              return Card(
                child: Column(
                  children: <Widget>[
                    //TODO: look into button bar theme
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          names[index],
                        ),
                        IconButton(
                          icon: Icon(Icons.account_box),
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            Get.to(Profile());
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.message),
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            // TODO: implement MessageWithDoctors()
                            // Get.to(MessageWithDoctors());
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.phone),
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            Get.to(LogEntryAdd());
                          },
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
