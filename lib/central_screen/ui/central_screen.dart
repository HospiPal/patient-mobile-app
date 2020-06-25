import 'package:flutter/material.dart';

class CentralScreen extends StatefulWidget {
  @override
  _CentralScreenState createState() => _CentralScreenState();
}

class _CentralScreenState extends State<CentralScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'MyHealth',
      style: optionStyle,
    ),
    Text(
      'MyTeam',
      style: optionStyle,
    ),
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'MyDocs',
      style: optionStyle,
    ),
    Text(
      'MyResults',
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
      appBar: AppBar(
          //title: const Text('HospiPal'),
          ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Care Team'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Health'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Docs'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Results'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
