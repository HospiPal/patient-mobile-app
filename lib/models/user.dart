import 'package:fhir/primitive_types/id.dart';
import 'package:fhir/r4.dart';
import 'package:fhir/r4/resource_types/clinical/medications/medications.dart';
import 'package:flutter/foundation.dart';
import 'package:patientapp/services/fhir/patient.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel extends ChangeNotifier {

  Patient _patient;

  UserModel(){

  }

  Id get id {
    return _patient?.id;
  }

  /// The name of the user.
  get name {
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

  /// Retrieves the [r4.Patient] resour  // List<MedicationRequest> medicationRequests;ces whose [Id] is [id].
  Future<void> retrievePatient(Id id) async {
    _patient = await PatientService().getById(id);
    notifyListeners();
  }

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
