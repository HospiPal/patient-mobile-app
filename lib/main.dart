import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/ui/central_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HospiPal',
      home: CentralScreen(),
    );
  }
}
