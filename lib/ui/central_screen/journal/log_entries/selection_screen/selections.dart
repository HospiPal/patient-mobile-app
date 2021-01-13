import 'package:patientapp/models/journal.dart';

class Selections {
  final List<SelectionModel> symptoms = <SelectionModel>[
    SelectionModel(option: 'Heartburn'),
    SelectionModel(option: 'Headache'),
    SelectionModel(option: 'Fever'),
    SelectionModel(option: 'Nausea')
  ];
  final List<SelectionModel> physicians = <SelectionModel>[
    SelectionModel(option: 'Dr. Mulligan'),
    SelectionModel(option: 'Dr. Rana'),
    SelectionModel(option: 'Dr. Fargnoli')
  ];
  final List<SelectionModel> severity = <SelectionModel>[
    SelectionModel(option: '1'),
    SelectionModel(option: '2'),
    SelectionModel(option: '3'),
    SelectionModel(option: '4'),
    SelectionModel(option: '5'),
  ];
}