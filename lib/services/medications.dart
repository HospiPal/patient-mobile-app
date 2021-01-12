import 'package:fhir/dstu2/resource_types/infrastructure_types/structure/structure.dart';
import 'package:fhir/primitive_types/id.dart';
import 'package:fhir/r4/resource_types/clinical/medications/medications.dart';
import 'package:fhir_at_rest/requests/search_request.dart';
import 'package:fhir_at_rest/resource_types/r4.dart';
import 'package:fhir_at_rest/search_parameters/r4/clinical/medications/medications.dart';
import 'package:fhir_at_rest/search_parameters/search_parameter_types/search_reference.dart';

import 'fhir.dart';

class MedicationsService extends FhirService {
  Future<List<MedicationRequest>> _medicationRequests(Id id) async {
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

    return medicationRequestRequest.fold((l) => null, (r) {
      final bundle = r as Bundle;
      return bundle.total.value.fold((l) => null, (total) {
        if (total <= 0) {
          return [];
        } else {
          // 'total > 0' implies that 'bundle.entry != null'
          return bundle.entry
              .map((bundleEntry) => bundleEntry.resource as MedicationRequest)
              .toList();
        }
      });
    });
  }
}
