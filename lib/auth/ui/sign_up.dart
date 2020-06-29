import 'package:flutter/material.dart';
import 'package:patientapp/auth/ui/auth.dart';
import 'package:patientapp/navigation.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    //TODO: see appbrewery 'How to use container widgets' video

    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Theme
                                    .of(context)
                                    .primaryColor)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: AuthButton(
                              title: 'Sign Up',
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.centralScreen);
                              })),
                    ]))));
  }
}
