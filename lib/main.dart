import 'package:flutter/material.dart';

import 'navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HospiPal',
      theme: ThemeData(
        primaryColor: Color(0xacdee1),
        accentColor: Color(0xe15050),
      ),
      initialRoute: Routes.auth,
      onGenerateRoute: generateRoute,
    );
  }
}
