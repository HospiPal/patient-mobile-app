import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/views/auth/auth.dart';
import 'package:patientapp/views/central_screen/central_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username = '';
  String password = '';
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20, color: Theme.of(context).accentColor),
                    ),
                  ),
                  AuthField('Username', usernameController, false),
                  AuthField('Password', passwordController, true),
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: AuthButton(
                          title: 'Sign Up',
                          onPressed: () {
                            Get.off(CentralScreen());
                            // Navigator.pushReplacementNamed(
                            //     context, Routes.centralScreen);
                          })),
                ])));
  }
}
