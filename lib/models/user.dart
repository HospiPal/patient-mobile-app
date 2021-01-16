import 'package:fhir/primitive_types/id.dart';
import 'package:fhir/r4.dart';
import 'package:flutter/foundation.dart';
import 'package:patientapp/services/patient.dart';

class UserModel extends ChangeNotifier {
  Patient _patient;

  Id get id {
    return _patient?.id;
  }

  /// The name of the user.
  String get name {
    if (_patient == null ||
        _patient.name.isEmpty ||
        _patient.name[0].given == null ||
        _patient.name[0].given.isEmpty) {
      return null;
    }
    final name = _patient.name[0].given[0].replaceAll(RegExp("[^a-zA-Z]"), '');
    if (name == "") return null;
    return name;
  }

  /// Retrieves the [r4.Patient] resources whose [Id] is [id].
  Future<void> retrievePatient(Id id) async {
    _patient = await PatientService().getById(id);
    notifyListeners();
  }
}
