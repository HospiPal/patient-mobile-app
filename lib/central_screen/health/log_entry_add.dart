import 'package:flutter/material.dart';

class LogEntryAdd extends StatefulWidget {
  @override
  _LogEntryAddState createState() => _LogEntryAddState();
}

class _LogEntryAddState extends State<LogEntryAdd> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'First Name'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Last Name'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Weight'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Height'),
                )
              ],
            ),
          ),
        ));
  }
}
