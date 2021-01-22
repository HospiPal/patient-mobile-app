import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/auth.dart';
import 'package:provider/provider.dart';

import 'models/medications.dart';
import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => MedicationsModel()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HospiPal',
        home: Auth(),
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 172, 222, 225),
          accentColor: const Color.fromARGB(255, 225, 80, 80),
          fontFamily: 'Franklin Gothic Demi',
        ),
      ),
    );
  }
}
