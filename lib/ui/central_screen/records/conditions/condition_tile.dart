import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConditionTile extends StatefulWidget {
  @override
  _ConditionTile createState() => _ConditionTile();
}

class _ConditionTile extends State<ConditionTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.hdr_strong,
              color: Theme.of(context).accentColor,
            ),
            Text('Asthma'),
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
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
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
                        EntryContainer('Condition:'),
                        Spacer(),
                        EntryContainer('Asthma'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        EntryContainer('Last Tested on:'),
                        Spacer(),
                        EntryContainer('6/1/19'),
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
          style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      //width: 150,
      padding: EdgeInsets.all(5),
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
    );
  }
}
