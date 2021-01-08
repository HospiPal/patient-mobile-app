import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/auth/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HospiPal',
      home: Auth(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 172, 222, 225),
        accentColor: const Color.fromARGB(255, 225, 80, 80),
        fontFamily: 'Franklin Gothic Demi',
      ),
    );
  }
}
