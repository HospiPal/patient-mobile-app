import 'dart:core';

import 'package:flutter/material.dart';

class MedicationsModel extends ChangeNotifier {
  List<MedicationModel> medications = [
    MedicationModel(
      name: 'Tylenol',
      daysToTake: <int>[1, 3, 4, 5],
      amount: 2,
      form: 'pills',
    ),
    MedicationModel(
      name: 'heroin',
      daysToTake: <int>[0, 2, 3, 4, 5],
      amount: 2,
      form: 'Mg',
    ),
    MedicationModel(
      name: 'Beta Blocker',
      daysToTake: <int>[1, 3, 5],
      amount: 2,
      form: 'pills',
    ),
    MedicationModel(
      name: 'Insulin',
      daysToTake: <int>[0, 6],
      amount: 2,
      form: 'pills',
    ),
  ];
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
