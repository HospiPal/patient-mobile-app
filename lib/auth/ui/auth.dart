import 'package:flutter/material.dart';

import '../../navigation.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: AuthButton(
              title: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(context, Routes.signUp);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: AuthButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// todo: extract code common to sign up and login into this file.

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  AuthButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      // todo: scale the button without hardcoded values
      color: Theme.of(context).accentColor,
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class AuthField extends StatefulWidget {
  @override
  _AuthFieldState createState() => _AuthFieldState();

  final String title;
  final TextEditingController textController;
  final bool obscure;

  AuthField(this.title, this.textController, this.obscure);
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    if (widget.obscure) {
      return TextFormField(
        controller: widget.textController,
        obscureText: true,
        decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: TextStyle(color: Theme
                .of(context)
                .accentColor)),
      );
    } else {
      return TextFormField(
        controller: widget.textController,
        obscureText: false,
        decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: TextStyle(color: Theme
                .of(context)
                .accentColor)),
      );
    }
  }
}
