import 'package:flutter/material.dart';
import 'package:patientapp/auth/login/ui/login.dart';
import 'package:patientapp/auth/register/ui/register.dart';
import '../../navigation.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}

class authButton extends StatelessWidget {
  String title;
  String route;

  authButton({@required this.title, @required this.route});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48,
      minWidth: 180,
      color: Theme
          .of(context)
          .primaryColor,
      splashColor: Colors.black,
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushNamed(
            context, route);
      },
      child: Text(title),
    );
  }
}