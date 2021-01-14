import 'package:fhir/primitive_types/id.dart';
import 'package:patientapp/models/user.dart';
import 'package:test/test.dart';

Future<UserModel> user(Id id) async {
  final userModel = UserModel();
  await userModel.retrievePatient(id);
  return userModel;
}

void main() {
  // test('empty MedicationRequest List', () async {
  //   var userModel = await user(Id('1174683'));
  //   await userModel.retrieveMedicationRequests();
  //   expect(userModel.medicationRequests, []);
  // });
}
