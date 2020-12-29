class Selections {
  final List<SelectionInList> symptoms = <SelectionInList>[
    SelectionInList('Heartburn'),
    SelectionInList('Headache'),
    SelectionInList('Fever'),
    SelectionInList('Nausea')
  ];
  final List<SelectionInList> physicians = <SelectionInList>[
    SelectionInList('Dr. Mulligan'),
    SelectionInList('Dr. Rana'),
    SelectionInList('Dr. Fargnoli')
  ];
  final List<SelectionInList> severity = <SelectionInList>[
    SelectionInList('1'),
    SelectionInList('2'),
    SelectionInList('3'),
    SelectionInList('4'),
    SelectionInList('5'),
  ];
}

class SelectionInList {
  String data;
  bool isSelected = false;

  SelectionInList(
    this.data,
  );
}
