import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/care_team/message.dart';
import 'package:patientapp/central_screen/care_team/profile.dart';
import 'package:patientapp/central_screen/health/journal_tile.dart';
import 'package:patientapp/central_screen/records/ui/lab_results/lab_results.dart';

import 'auth/ui/auth.dart';
import 'auth/ui/login.dart';
import 'auth/ui/sign_up.dart';
import 'central_screen/health/log__entry_edit.dart';
import 'central_screen/health/log_entry_add.dart';
import 'central_screen/health/log_entry_view.dart';
import 'central_screen/ui/central_screen.dart';

// todo: possible change this to a freezed union type
class Routes {
  static const centralScreen = 'central_screen';
  static const auth = 'auth';
  static const signUp = 'auth/sign_up';
  static const login = 'auth/login';
  static const logEntryAdd = 'central_screen/health/log_entry_add';
  static const logEntryEdit = 'central_screen/health/log_entry_edit';
  static const logEntryView = 'central_screen/health/log_entry_view';
  static const message = 'care_team/message';
  static const profile = 'care_team/profile';
  static const labResults = 'central_screen/records/lab_results';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  if (settings.name == Routes.logEntryEdit) {
    final EntryArg args = settings.arguments;

    return MaterialPageRoute(
      builder: (context) {
        return LogEntryEdit(entry: args.entry);
      },
    );
  } else if (settings.name == Routes.logEntryView) {
    final EntryArg args = settings.arguments;

    return MaterialPageRoute(
      builder: (context) {
        return LogEntryView(entry: args.entry);
      },
    );
  }

  switch (settings.name) {
    case Routes.centralScreen:
      return MaterialPageRoute(builder: (context) => CentralScreen());
    case Routes.auth:
      return MaterialPageRoute(builder: (context) => Auth());
    case Routes.signUp:
      return MaterialPageRoute(builder: (context) => SignUp());
    case Routes.login:
      return MaterialPageRoute(builder: (context) => Login());
    case Routes.logEntryAdd:
      return MaterialPageRoute(builder: (context) => LogEntryAdd());
    case Routes.logEntryEdit:
      return MaterialPageRoute(builder: (context) => LogEntryEdit());
    case Routes.logEntryView:
      return MaterialPageRoute(builder: (context) => LogEntryView());
    case Routes.profile:
      return MaterialPageRoute(builder: (context) => Profile());
    case Routes.message:
      return MaterialPageRoute(builder: (context) => Message());
    case Routes.labResults:
      return MaterialPageRoute(builder: (context) => LabResults());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedRoute(settings.name));
  }
}

class UndefinedRoute extends StatelessWidget {
  final String undefinedRoute;

  UndefinedRoute(this.undefinedRoute);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              'Undefined route: ($undefinedRoute). \nThis is a dart:core/errors Error.')),
      backgroundColor: Colors.red,
    );
  }
}
