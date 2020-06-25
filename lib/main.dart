import 'package:flutter/material.dart';

import 'auth/login/ui/login_screen.dart';
import 'central_screen/ui/central_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

          //primarySwatch: Colors.blue,

          ),
      home: LoginScreen(),
    );
  }
}