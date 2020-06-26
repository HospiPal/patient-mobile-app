import 'package:flutter/material.dart';

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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In',
            style:
                TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
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
        ],
      )),

//      body: Center(
//          child: Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 32.0),
//              child: Column(
//                children: <Widget>[
//                  TextFormField(
//                      obscureText: false,
//                      decoration: InputDecoration(
//                          labelText: "Email",
//                          labelStyle:
//                          TextStyle(color: Theme.of(context).primaryColor)),
//                      onChanged: (val) {
//                        //setState(() => email = val);
//                      }),
//                  TextFormField(
//                      obscureText: true,
//                      decoration: InputDecoration(
//                          labelText: "Password",
//                          labelStyle:
//                          TextStyle(color: Theme.of(context).primaryColor)),
//                      onChanged: (val) {
//                        setState(() => password = val);
//                      })
//                ],
//              )
//          )
//      )
    );
  }
}
