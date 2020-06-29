import 'package:flutter/material.dart';

import 'auth/ui/auth.dart';
import 'auth/ui/login.dart';
import 'auth/ui/sign_up.dart';
import 'central_screen/ui/central_screen.dart';

// todo: possible change this to a freezed union type
class Routes {
  static const centralScreen = '/central_screen';
  static const auth = '/auth';
  static const signUp = '/auth/sign_up';
  static const login = '/auth/login';
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
    default:
      return MaterialPageRoute(builder: (context) => UndefinedRoute());
  }
}

class UndefinedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Undefined Route \nThis is a dart:core/errors Error.')),
      backgroundColor: Colors.red,
    );
  }
}
