import 'package:patientapp/ui/central_screen/health/log_entries/selection_screen/selections.dart';

class LogEntry {
  String subject;
  List<SelectionInList> symptoms;
  List<SelectionInList> physicians;
  List<SelectionInList> severity; //TODO: change so not a list
  int height;
  int weight;
  var dateStamp;

  LogEntry(
      {this.subject,
      this.weight,
      this.height,
      this.severity,
      this.physicians,
      this.dateStamp,
      this.symptoms});
}
