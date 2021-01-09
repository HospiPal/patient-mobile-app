import 'package:fhir/r4.dart';
import 'package:flutter/foundation.dart';
import 'package:patientapp/services/fhir.dart';

class UserModel extends ChangeNotifier {
  Patient patient;
  List<MedicationRequest> medicationRequests;

  get name {
    if (patient == null ||
        patient.name.isEmpty ||
        patient.name[0].given == null ||
        patient.name[0].given.isEmpty) {
      return null;
    }
    final name = patient.name[0].given[0].replaceAll(RegExp("[^a-zA-Z]"), '');
    if (name == "") return null;
    return name;
  }

  Future<void> retrievePatient(Id id) async {
    patient = await Fhir().patient(id);
    notifyListeners();
  }

  Future<void> retrieveMedicationRequests() async {
    if (patient == null) {
      return;
    }
    medicationRequests = await Fhir().medicationRequests(patient.id);
    notifyListeners();
  }
}
