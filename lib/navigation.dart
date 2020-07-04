import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/care_team/message.dart';
import 'package:patientapp/central_screen/care_team/profile.dart';

import 'auth/ui/auth.dart';
import 'auth/ui/login.dart';
import 'auth/ui/sign_up.dart';
import 'central_screen/health/log_entry_add.dart';
import 'central_screen/ui/central_screen.dart';

// todo: possible change this to a freezed union type
class Routes {
  static const centralScreen = 'central_screen';
  static const auth = 'auth';
  static const signUp = 'auth/sign_up';
  static const login = 'auth/login';
  static const logEntryAdd = 'central_screen/health/log_entry_add';
  static const message = 'care_team/message';
  static const profile = 'care_team/profile';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  assert(settings.arguments == null);
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
    case Routes.message:
      return MaterialPageRoute(builder: (context) => Message());
    case Routes.profile:
      return MaterialPageRoute(builder: (context) => Profile());
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
