import 'dart:core';

import 'package:flutter/material.dart';

class MedicationsModel extends ChangeNotifier {
  List<MedicationModel> medications;
}

@immutable
class MedicationModel {
  String name;
  String code; //code that represents the specific drug
  String form; //tablet, pill, powder
  double amount; //in terms of one of the form
  List<String> ingredients;
  bool active; //if patient should currently be taking medication
  var expDate; //expiration date
  List<int>
      daysToTake; //what days of the week to take the medication: 1 = monday

  MedicationModel(
      {this.name,
      this.code,
      this.form,
      this.amount,
      this.ingredients,
      this.active,
      this.expDate,
      this.daysToTake});
}
