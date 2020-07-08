import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/care_team/ui/care_team.dart';
import 'package:patientapp/central_screen/health/ui/health.dart';
import 'package:patientapp/central_screen/home/ui/home.dart';

class CentralScreen extends StatefulWidget {
  @override
  _CentralScreenState createState() => _CentralScreenState();
}

class _CentralScreenState extends State<CentralScreen> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    CareTeam(),
    Health(),
    Text(
      'Records',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Care Team'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Journal'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            title: Text('Records'),
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
