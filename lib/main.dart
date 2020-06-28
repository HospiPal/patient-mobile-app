import 'package:flutter/material.dart';
import 'package:patientapp/auth/login/ui/login.dart';

import 'auth/navigation.dart';
import 'auth/register/ui/register.dart';
import 'central_screen/ui/central_screen.dart';

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
        Routes.homeScreen: (context) {
          return CentralScreen();
        },
        Routes.register: (context) {
          return RegisterScreen();
        },
      },
    );
  }
}
