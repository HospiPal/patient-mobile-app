import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/requests/read_request.dart';
import 'package:fhir_at_rest/requests/search_request.dart';
import 'package:fhir_at_rest/resource_types/r4.dart';
import 'package:fhir_at_rest/search_parameters/r4/clinical/clinical.dart';
import 'package:fhir_at_rest/search_parameters/search_parameter_types/search_parameter_types.dart';

class Fhir {
  Uri baseUri;

  Fhir({this.baseUri}) {
    if (baseUri == null) {
      this.baseUri = Uri.parse('https://hapi.fhir.org/baseR4');
    }
  }

  Future<Patient> patient(Id id) async {
    final patientRequest = await ReadRequest.r4(
      base: baseUri,
      type: R4Types.patient,
      id: id,
    ).request();
    return patientRequest.fold((l) => null, (r) => r as Patient);
  }

  Future<List<MedicationRequest>> medicationRequests(Id id) async {
    final medicationRequestRequest = await SearchRequest.r4(
      base: baseUri,
      type: R4Types.medicationrequest,
      parameters: MedicationRequestSearch(
        patient: [
          SearchReference(
            type: R4Types.patient,
            id: id,
          )
        ],
      ),
    ).request();
    return medicationRequestRequest.fold(
        (l) => null, (r) => r as List<MedicationRequest>);
  }
}
