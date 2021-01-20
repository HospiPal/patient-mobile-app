import 'package:patientapp/models/medications.dart';
import 'package:patientapp/services/sqflite/repository.dart';

class MedicationsService{
  Repository _repository;


  MedicationsService(){
    _repository = Repository();
  }

  // create journal
  saveMedications(MedicationModel j) async {
    return await _repository.insertData('medicationInfo', j.toJson() );
  }

  // read journal table
  readMedications () async {
    return await _repository.readData('medicationInfo');
  }

  // update data in table
  updateMedications(MedicationModel j) async {
    return await _repository.updateData('medicationInfo', j.toJson());
  }

  // delete data from table by id
  deleteMedications(journalId) async {
    return await _repository.deleteData('medicationInfo', journalId);
  }


}