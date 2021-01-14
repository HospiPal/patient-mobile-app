import 'dart:core';

import 'package:flutter/material.dart';

class MedicationsModel extends ChangeNotifier {
  List<MedicationModel> medications = [];
}

@immutable
class MedicationModel {
  final String name;
  final String code; //code that represents the specific drug
  final String form; //tablet, pill, powder
  final double amount; //in terms of one of the form
  final List<String> ingredients;
  final bool active; //if patient should currently be taking medication
  final expDate; //expiration date
  final List<int>
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

  String get dose => amount.toString() + ' ' + form;
}
