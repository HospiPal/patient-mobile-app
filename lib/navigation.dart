import 'package:flutter/material.dart';

import 'auth/ui/auth.dart';
import 'central_screen/ui/central_screen.dart';

class Routes {
  static const centralScreen = '/central_screen';
  static const auth = '/auth';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  assert(settings.arguments == null);
  switch (settings.name) {
    case Routes.centralScreen:
      return MaterialPageRoute(builder: (context) => CentralScreen());
    case Routes.auth:
      return MaterialPageRoute(builder: (context) => Auth());
    default:
  }
}