import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/requests/read_request.dart';
import 'package:fhir_at_rest/resource_types/r4.dart';
import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {
  Patient patient;

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

  Future<void> initPatient(Id id) async {
    final patientRequest = await ReadRequest.r4(
      base: Uri.parse('https://hapi.fhir.org/baseR4'),
      type: R4Types.patient,
      id: id,
    ).request();
    patient = patientRequest.fold((l) => null, (r) => r as Patient);
    notifyListeners();
  }
}
