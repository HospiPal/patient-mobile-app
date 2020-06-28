import 'package:flutter/material.dart';
import 'package:patientapp/auth/ui/auth.dart';

import '../../../navigation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        'Sign In',
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: authButton(route: Routes.centralScreen, title: 'Login')
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: authButton(route: Routes.auth, title: 'Register with Email')
                          )
                        ],
                      ),
                    ]))));
  }
}
