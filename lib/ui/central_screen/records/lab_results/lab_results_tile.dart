import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabResultsTile extends StatefulWidget {
  @override
  _LabResultsTileState createState() => _LabResultsTileState();
}

class _LabResultsTileState extends State<LabResultsTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.graphic_eq,
              color: Theme.of(context).accentColor,
            ),
            Text('Covid Antibody Test'),
            Text('7/14'),
          ],
        ),
        onTap: () {
          _showModalBottomSheet(context);
        },
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * .85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0),
            ),
          ),
          child: Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        EntryContainer('Date:'),
                        Spacer(),
                        EntryContainer('7/14/20'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Test:'),
                        Spacer(),
                        EntryContainer('COVID'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Result:'),
                        Spacer(),
                        EntryContainer('NEGATIVE'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class EntryContainer extends StatefulWidget {
  @override
  _EntryContainerState createState() => _EntryContainerState();

  final String text;

  EntryContainer(this.text);
}

class _EntryContainerState extends State<EntryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.text,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      //width: 150,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
    );
  }
}
