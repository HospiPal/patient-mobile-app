import 'package:flutter/material.dart';

import 'navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const Color primary = Color.fromARGB(255, 172, 222, 225);
  static const Color second = Color.fromARGB(255, 225, 80, 80);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HospiPal',
      theme: ThemeData(
        primaryColor: primary,
        accentColor: second,
        fontFamily: 'Franklin Gothic Demi',
      ),
      initialRoute: Routes.auth,
      onGenerateRoute: generateRoute,
    );
  }
}
