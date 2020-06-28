import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/ui/central_screen.dart';

import 'auth/login/ui/login.dart';
import 'auth/register/ui/register.dart';
import 'central_screen/ui/central_screen.dart';
import 'navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HospiPal',
      navigatorKey: Keys.navKey,
      home: LoginScreen(),
      routes: {
        Routes.centralScreen: (context) {
          return CentralScreen();
        },
        Routes.auth: (context) {
          return RegisterScreen();
        },
      },
    );
  }
}
