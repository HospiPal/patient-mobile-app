import 'package:flutter/material.dart';
import 'package:patientapp/navigation.dart';

import 'auth.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
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
                                color: Theme.of(context).primaryColor)),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: AuthButton(
                            title: 'Login',
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Routes.centralScreen);
                            },
                          )),
                    ]))));
  }
}
