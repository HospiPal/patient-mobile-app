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
          onPressed: () {},
        )
      ]),
      body: SafeArea(
        child: Center(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Text('AH'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
