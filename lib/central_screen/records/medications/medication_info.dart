import 'dart:core';

class MedicationInfo {
  String name;
  String code;
  String form; //tablet, pill, powder
  double amount; //in terms of one of the form
  List<String> ingredients;
  bool active; //if patient should currently be taking medication
  var expDate; //expiration date
  List<int>
      daysToTake; //what days of the week to take the medication: 1 = monday

  MedicationInfo(
      {this.name,
      this.code,
      this.form,
      this.amount,
      this.ingredients,
      this.active,
      this.expDate,
      this.daysToTake});
}
