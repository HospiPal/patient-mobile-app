import 'package:flutter/material.dart';
import 'package:patientapp/models/medications.dart';
import 'package:patientapp/ui/central_screen/care_team/ui/care_team.dart';
import 'package:patientapp/ui/central_screen/journal/ui/journal.dart';
import 'package:patientapp/ui/central_screen/home/home.dart';
import 'package:patientapp/ui/central_screen/records/records.dart';
import 'package:provider/provider.dart';

class CentralScreen extends StatefulWidget {
  @override
  _CentralScreenState createState() => _CentralScreenState();
}

class _CentralScreenState extends State<CentralScreen> {
  int _selectedScreen = 0;

  final List<Widget> _screens = <Widget>[
    Home(),
    CareTeam(),
    Journal(),
    Records()
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MedicationsModel(),
      child: Scaffold(
        body: Center(
          child: _screens.elementAt(_selectedScreen),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Care Team',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Journal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_open),
              label: 'Records',
            ),
          ],
          currentIndex: _selectedScreen,
          //selectedItemColor: Theme.of(context).accentColor,
          onTap: (int index) {
            setState(() {
              _selectedScreen = index;
            });
          },
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
