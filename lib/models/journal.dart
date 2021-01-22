import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
// import 'package:patientapp/models/selection.dart';

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

@JsonSerializable(genericArgumentFactories: true)
class SelectionModel<T> {
  // @_Converter()
  T option;
  bool isSelected;

  SelectionModel({@required this.option, this.isSelected = false});

  factory SelectionModel.fromJson(
      Map<String, dynamic> json,
      T Function (Object json) fromJsonT,
      ) =>
      _$SelectionModelFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SelectionModelToJson(this, toJsonT);

}




