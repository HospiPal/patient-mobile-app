import 'package:flutter/material.dart';

class LogEntryModel {
  String subject;
  List<SelectionModel> symptoms;
  List<SelectionModel> physicians;
  List<SelectionModel> severity; //TODO: change so not a list
  int height;
  int weight;
  var dateStamp;

  LogEntryModel(
      {this.subject,
      this.weight,
      this.height,
      this.severity,
      this.physicians,
      this.dateStamp,
      this.symptoms});
}

class SelectionModel<T> {
  T option;
  bool isSelected;

  SelectionModel({@required this.option, this.isSelected = false});
}
