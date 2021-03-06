import 'package:fhir/primitive_types/id.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/models/user.dart';
import 'package:patientapp/ui/central_screen/central_screen.dart';
import 'package:provider/provider.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final fhirIdController = TextEditingController(text: '1726569');

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
                'Login',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).accentColor),
              ),
            ),
            AuthField('FHIR ID', fhirIdController, false),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: AuthButton(
                title: 'Login',
                onPressed: () async {
                  await context.read<UserModel>().retrievePatient(
                        Id(fhirIdController.text),
                      );
                  Get.offAll(CentralScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  AuthButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
  final bool obscureText;

  AuthField(this.title, this.textController, this.obscureText);
}

class _AuthFieldState extends State<AuthField> {
  @override
  Widget build(BuildContext context) {
    if (widget.obscureText) {
      return TextFormField(
        controller: widget.textController,
        obscureText: true,
        decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: TextStyle(color: Theme.of(context).accentColor)),
      );
    } else {
      return TextFormField(
        controller: widget.textController,
        obscureText: false,
        decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: TextStyle(color: Theme.of(context).accentColor)),
      );
    }
  }
}
