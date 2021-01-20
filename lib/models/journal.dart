import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:patientapp/models/selection.dart';

part 'journal.g.dart';

@JsonSerializable()
class LogEntryModel {

  String subject;
  List<SelectionModel> symptoms;
  List<SelectionModel> physicians;
  List<SelectionModel> severity;
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

  factory LogEntryModel.fromJson(Map<String, dynamic> json) => _$LogEntryModelFromJson(json);

  Map<String, dynamic> toJson() => _$LogEntryModelToJson(this);


}



