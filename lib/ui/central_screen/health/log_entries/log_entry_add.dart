import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/ui/central_screen/health/journal_tile.dart';
import 'package:patientapp/ui/central_screen/health/log_entries/selection_screen/selection_screen.dart';
import 'package:patientapp/ui/central_screen/health/log_entries/selection_screen/selections.dart';
import 'package:patientapp/ui/central_screen/health/log_entry.dart';

class LogEntryAdd extends StatefulWidget {
  @override
  _LogEntryAddState createState() => _LogEntryAddState();
}

class _LogEntryAddState extends State<LogEntryAdd> {
  TextEditingController subjectController = new TextEditingController();
  List<SelectionInList> symptoms = List<SelectionInList>();
  List<SelectionInList> physicians = List<SelectionInList>();
  List<SelectionInList> severity = List<SelectionInList>();
  List<SelectionInList> dateAffected = List<SelectionInList>();

  List<Widget> journalFieldWidgets() {
    return [
      LogEntryField('Subject', subjectController),
      SelectionEntry('Symptoms', Selections().symptoms, symptoms),
      SelectionEntry('Physician', Selections().physicians, physicians),
      SelectionEntry('Severity', Selections().severity, severity),
      SelectionEntry(
          'Initial Date affected', Selections().symptoms, dateAffected),
      FlatButton(
        padding: EdgeInsets.all(16.0),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(Icons.photo),
            Text('Add an Image'),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          onPressed: () {
            LogEntry entry = new LogEntry(
              subject: subjectController.text,
              symptoms: symptoms,
              physicians: physicians,
              severity: severity,
              dateStamp: DateTime.now(),
            );
            JournalTile tile = JournalTile(entry);
            if (tile.entry.subject != '') {
              Get.back(result: tile);
            } else {
              Get.back();
            }
          },
          child: Text('Submit'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: journalFieldWidgets().length,
          itemBuilder: (BuildContext context, int index) {
            //return LogEntryAdd();
            return journalFieldWidgets()[index];
          },
        ),
      ),
    );
  }
}

class LogEntryField extends StatefulWidget {
  @override
  _LogEntryFieldState createState() => _LogEntryFieldState();

  final String title;
  final TextEditingController textController;

  LogEntryField(this.title, this.textController);
}

class _LogEntryFieldState extends State<LogEntryField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      decoration: InputDecoration(
        labelText: widget.title,
      ),
    );
  }
}

class SelectionEntry extends StatefulWidget {
  @override
  _SelectionEntryState createState() => _SelectionEntryState();

  final String title;
  final List<SelectionInList> selections;
  List<SelectionInList> selectedItems;

  SelectionEntry(this.title, this.selections, this.selectedItems);
}

class _SelectionEntryState extends State<SelectionEntry> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          onPressed: () {
            setState(() {
              makeSelections();
            });
          },
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.title),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
        if (widget.selectedItems.length > 0)
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            children: selectionButtons(),
          )
      ],
    );
  }

  void makeSelections() async {
    final selectedItems = await Get.to(SelectionScreen(
      selections: widget.selections,
      title: widget.title,
      selectedItems: widget.selectedItems,
    ));
    setState(() {
      widget.selectedItems = selectedItems;
    });
  }

  List<InputChip> selectionButtons() {
    List<InputChip> selectedButtons = List<InputChip>();
    for (int i = 0; i < widget.selectedItems.length; i++) {
      selectedButtons.add(InputChip(
        avatar: CircleAvatar(
          //backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.add_box,
            color: Theme.of(context).accentColor,
          ),
        ),
        label: Text(widget.selectedItems[i].data),
        onPressed: () {
          print('Pressed!');
        },
        deleteIcon: Icon(Icons.close),
        onDeleted: () {
          setState(() {
            widget
                .selections[widget.selections.indexOf(widget.selectedItems[i])]
                .isSelected = false;
            widget.selectedItems.remove(widget.selectedItems[i]);
          });
        },
      ));
//      selectedButtons.add(FlatButton.icon(
//        onPressed: () {
//          setState(() {
//            widget.selections[widget.selections.indexOf(selectedItems[i])]
//                .isSelected = false;
//            selectedItems.remove(selectedItems[i]);
//          });
//        },
//        icon: Icon(Icons.close),
//        label: Text(selectedItems[i].data),
//        color: Theme.of(context).buttonColor,
//      ));
    }
    return selectedButtons;
  }
}

class SelectionArg {
  final List<SelectionInList> selection; //all possibilities
  final String title;
  final List<SelectionInList>
      previouslySelectedItems; //previously slected, if any

  SelectionArg(this.selection, this.title, this.previouslySelectedItems);
}
