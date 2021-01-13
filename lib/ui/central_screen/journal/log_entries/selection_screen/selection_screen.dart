import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patientapp/models/journal.dart';

class SelectionScreen extends StatefulWidget {
  final List<SelectionModel> selections; //total selections
  final List<SelectionModel> selectedItems; //previous selections, if any
  final String title;

  @override
  _SelectionScreenState createState() => _SelectionScreenState();

  SelectionScreen(
      {Key key,
      @required this.selections,
      @required this.title,
      @required this.selectedItems})
      : super(key: key);
}

class _SelectionScreenState extends State<SelectionScreen> {
  //List<SelectionInList> itemsSelected = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[
        FlatButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: Text('Select'),
          onPressed: () {
            Get.back(result: widget.selectedItems);
          },
        )
      ]),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: widget.selections.length,
        itemBuilder: (BuildContext context, int index) {
          //return LogEntryAdd();
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
              child: FlatButton(
                color: Colors.white,
                padding: EdgeInsets.all(2),
                onPressed: () {
                  setState(() {
                    widget.selections[index].isSelected =
                        !widget.selections[index].isSelected;
                    if (widget.selectedItems
                        .contains(widget.selections[index])) {
                      widget.selectedItems.remove(widget.selections[index]);
                    } else {
                      widget.selectedItems.add(widget.selections[index]);
                    }
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Center(
                          child: Text(widget.selections[index].option),
                        ),
                        if (widget.selections[index].isSelected == true)
                          Icon(
                            Icons.check,
                            color: Theme.of(context).primaryColor,
                          ),
                      ],
                    )
                  ],
                ),
                //color: Colors.amberAccent
              ),
              padding: EdgeInsets.all(2),
            ),
          );
        },
      ),
    );
  }
}
