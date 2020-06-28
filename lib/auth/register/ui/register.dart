import 'package:flutter/material.dart';

import '../../../navigation.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                        'Register',
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: MaterialButton(
                              height: 40,
                              minWidth: 150,
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                              splashColor: Colors.black,
                              textColor: Colors.white,
                              onPressed: () async {
                                Navigator.pushNamed(
                                    context, Routes.centralScreen);
                              },
                              child: Text('Sign Up'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: MaterialButton(
                              height: 40,
                              minWidth: 150,
                              color: Theme
                                  .of(context)
                                  .primaryColor,
                              splashColor: Colors.black,
                              textColor: Colors.white,
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                              child: Text('Back to Login'),
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }
}
