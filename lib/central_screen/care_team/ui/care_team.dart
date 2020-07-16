import 'package:flutter/material.dart';

import '../../../navigation.dart';

class CareTeam extends StatefulWidget {
  @override
  _CareTeamState createState() => _CareTeamState();
}
// TODO: add schedluing appointments
class _CareTeamState extends State<CareTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        FlatButton(
          textColor: Colors.white,
          child: Text('Logout'),
          onPressed: () {},
        )
      ]),
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
                          'Dr. Marc Mulligan',
                        ),
                        IconButton(
                          icon: Icon(Icons.account_box),
                          color: Theme.of(context).accentColor,
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.profile);
                          },
                        ),
                        IconButton(
                            icon: Icon(Icons.message),
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.message);
                            }),
                        IconButton(
                          icon: Icon(Icons.phone),
                          color: Theme
                              .of(context)
                              .accentColor,
                          onPressed: () {
                            //Navigator.pushNamed(context, Routes.logEntryAdd);
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


