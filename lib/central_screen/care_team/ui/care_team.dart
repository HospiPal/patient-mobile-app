import 'package:flutter/material.dart';

class CareTeam extends StatefulWidget {
  @override
  _CareTeamState createState() => _CareTeamState();
}

class _CareTeamState extends State<CareTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        FlatButton(
          textColor: Colors.white,
          child: Text('Logout'),
        )
      ]),
      body: SafeArea(
        child: Center(),
      ),
    );
  }
}
