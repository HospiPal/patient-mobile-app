// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationModel _$MedicationModelFromJson(Map<String, dynamic> json) {
  return MedicationModel(
    name: json['name'] as String,
    code: json['code'] as String,
    form: json['form'] as String,
    amount: (json['amount'] as num)?.toDouble(),
    ingredients:
        (json['ingredients'] as List)?.map((e) => e as String)?.toList(),
    active: json['active'] as bool,
    expDate: json['expDate'],
    daysToTake: (json['daysToTake'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$MedicationModelToJson(MedicationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'form': instance.form,
      'amount': instance.amount,
      'ingredients': instance.ingredients,
      'active': instance.active,
      'expDate': instance.expDate,
      'daysToTake': instance.daysToTake,
    };
