import 'package:flutter/material.dart';

import '../../navigation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Theme.of(context).primaryColor)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Theme.of(context).primaryColor)),
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
                        Keys.navKey.currentState.pushReplacementNamed(Routes.homeScreen);
                      },
                      child: Text('Login'),
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
                      //when the button is pressed, print instance of user
                      onPressed: () async {
                        Keys.navKey.currentState.pushReplacementNamed(Routes.register);
                      },
                      child: Text('Register with Email'),
                    ),
                  )
                ],
              ),
            ]
          )
        )
      )
    );


  }
}
