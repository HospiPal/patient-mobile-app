// import 'package:flutter/material.dart';
// import 'package:patientapp/views/central_screen/care_team/profile.dart';
// import 'package:patientapp/views/central_screen/health/log_entries/log_entry_edit.dart';
// import 'package:patientapp/views/central_screen/home/patient_messaging/message.dart';
//
// import 'views/auth/auth.dart';
// import 'views/auth/login.dart';
// import 'views/auth/sign_up.dart';
// import 'views/central_screen/central_screen.dart';
// import 'views/central_screen/health/journal_tile.dart';
// import 'views/central_screen/health/log_entries/log_entry_add.dart';
// import 'views/central_screen/health/log_entries/log_entry_view.dart';
// import 'views/central_screen/health/log_entries/selection_screen/selection_screen.dart';
// import 'views/central_screen/records/allergies/allergies.dart';
// import 'views/central_screen/records/conditions/conditions.dart';
// import 'views/central_screen/records/immunizations/immunizations.dart';
// import 'views/central_screen/records/lab_results/lab_results.dart';
// import 'views/central_screen/records/medications/medications.dart';
// import 'views/central_screen/records/procedures/procedures.dart';
//
// class Routes {
//   static const patients = 'patients';
//
//   static const auth = 'auth';
//   static const signUp = 'auth/sign_up';
//   static const login = 'auth/login';
//
//   static const centralScreen = 'central_screen';
//
//   static const logEntryAdd = 'central_screen/health/log_entry_add';
//   static const logEntryEdit = 'central_screen/health/log_entry_note';
//   static const logEntryView = 'central_screen/health/log_entry_view';
//
//   static const labResults = 'central_screen/records/lab_results';
//   static const conditions = 'central_screen/records/conditions';
//   static const allergies = 'central_screen/records/allergies';
//   static const immunizations = 'central_screen/records/immunizations';
//   static const medications = 'central_screen/records/medications';
//   static const procedures = 'central_screen/records/procedures';
//
//   static const journalSelections = 'central_screen/health/selection_screen';
//
//   static const messageWithDoctors = 'care_team/message';
//   static const profile = 'care_team/profile';
//
//   static const messageWithPatient = 'home/message';
// }
//
// Route<dynamic> generateRoute(RouteSettings settings) {
//   if (settings.name == Routes.logEntryEdit) {
//     final EntryArg args = settings.arguments;
//
//     return MaterialPageRoute(
//       builder: (context) {
//         return LogEntryEdit(entry: args.entry);
//       },
//     );
//   } else if (settings.name == Routes.logEntryView) {
//     final EntryArg args = settings.arguments;
//
//     return MaterialPageRoute(
//       builder: (context) {
//         return LogEntryView(entry: args.entry);
//       },
//     );
//   } else if (settings.name == Routes.journalSelections) {
//     final SelectionArg args = settings.arguments;
//
//     return MaterialPageRoute(
//       builder: (context) {
//         return SelectionScreen(
//           selections: args.selection,
//           title: args.title,
//           selectedItems: args.previouslySelectedItems,
//         );
//       },
//     );
//   }
//
//   assert(settings.arguments == null);
//   switch (settings.name) {
//     case Routes.centralScreen:
//       return MaterialPageRoute(builder: (context) => CentralScreen());
//     case Routes.auth:
//       return MaterialPageRoute(builder: (context) => Auth());
//     case Routes.signUp:
//       return MaterialPageRoute(builder: (context) => SignUp());
//     case Routes.login:
//       return MaterialPageRoute(builder: (context) => Login());
//     case Routes.logEntryAdd:
//       return MaterialPageRoute(builder: (context) => LogEntryAdd());
//     case Routes.procedures:
//       return MaterialPageRoute(builder: (context) => Procedures());
//     case Routes.medications:
//       return MaterialPageRoute(builder: (context) => Medications());
//     case Routes.immunizations:
//       return MaterialPageRoute(builder: (context) => Immunizations());
//     case Routes.allergies:
//       return MaterialPageRoute(builder: (context) => Allergies());
//     case Routes.conditions:
//       return MaterialPageRoute(builder: (context) => Conditions());
//     case Routes.labResults:
//       return MaterialPageRoute(builder: (context) => LabResults());
//     case Routes.profile:
//       return MaterialPageRoute(builder: (context) => Profile());
//     case Routes.messageWithPatient:
//       return MaterialPageRoute(builder: (context) => MessageWithPatient());
//     case Routes.journalSelections:
//       return MaterialPageRoute(builder: (context) => SelectionScreen());
//     default:
//       return MaterialPageRoute(
//           builder: (context) => UndefinedRoute(settings.name));
//   }
// }
//
// class UndefinedRoute extends StatelessWidget {
//   final String undefinedRoute;
//
//   UndefinedRoute(this.undefinedRoute);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           'Undefined route: ($undefinedRoute). \nThis is a dart:core/errors Error.',
//         ),
//       ),
//       backgroundColor: Colors.red,
//     );
//   }
// }
//
