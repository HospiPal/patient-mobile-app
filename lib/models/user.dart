import 'package:fhir/primitive_types/id.dart';
import 'package:fhir/r4.dart';
import 'package:fhir/r4/resource_types/clinical/medications/medications.dart';
import 'package:flutter/foundation.dart';
import 'package:patientapp/services/patient.dart';

class UserModel extends ChangeNotifier {
  Patient patient;
  List<MedicationRequest> medicationRequests;

  /// The name of the user.
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

  /// Retrieves the [r4.Patient] resources whose [Id] is [id].
  Future<void> retrievePatient(Id id) async {
    patient = await PatientService().getById(id);
    notifyListeners();
  }

  /// Retrieves the [medicationRequests] of [patient].
  ///
  /// Throws an [Error] if [patient] has not been initialized.
  Future<void> retrieveMedicationRequests() async {
    // if (patient == null) {
    //   throw Error();
    // }
    // medicationRequests = await Fhir().medicationRequests(patient.id);
    // notifyListeners();
  }
}
