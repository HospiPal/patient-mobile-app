import 'package:fhir/primitive_types/id.dart';
import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/requests/read_request.dart';
import 'package:fhir_at_rest/resource_types/r4.dart';

import 'fhir.dart';

class PatientService extends FhirService {
  Future<Patient> getById(Id id) async {
    final patientRequest = await ReadRequest.r4(
      base: baseUri,
      type: R4Types.patient,
      id: id,
    ).request();
    return patientRequest.fold((l) => null, (r) => r as Patient);
  }
}
