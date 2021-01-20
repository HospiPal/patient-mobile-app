import 'package:patientapp/models/journal.dart';
import 'package:patientapp/services/sqflite/repository.dart';

class JournalService{
  Repository _repository;


  JournalService(){
    _repository = Repository();
  }

  // create journal
  saveJournal(LogEntryModel j) async {
    return await _repository.insertData('journal', j.toJson() );
  }

  // read journal table
  readJournal () async {
    return await _repository.readData('journal');
  }

  // update data in table
  updateJournal(LogEntryModel j) async {
    return await _repository.updateData('journal', j.toJson());
  }

  // delete data from table by id
  deleteJournal(journalId) async {
    return await _repository.deleteData('journal', journalId);
  }


}