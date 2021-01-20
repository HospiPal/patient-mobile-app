import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selection.g.dart';


// help:
// https://github.com/google/json_serializable.dart/blob/master/example/lib/json_converter_example.dart


@JsonSerializable(genericArgumentFactories: true)
class SelectionModel<T> {
  // @_Converter()
  T option;
  bool isSelected;

  SelectionModel({@required this.option, this.isSelected = false});

  factory SelectionModel.fromJson(Map<String, dynamic> json) => _$SelectionModelFromJson(json);
  Map<String, dynamic> toJson() => _$SelectionModelToJson(this);

}

// class _Converter implements JsonConverter<T, Object?>{
//   const _Converter();
//
//   @override
//   T fromJson(Object? json){
//     if(json is Map<String, dynamic>) {
//       return CustomResult.fromJson(json) as T;
//     }
//
//     // works only when 'json' is a native JSON type: eg num string, nool, null *and* is assignable to 'T'
//     return json as T;
//   }
// }