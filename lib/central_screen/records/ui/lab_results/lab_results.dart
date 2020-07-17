import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabResults extends StatefulWidget {
  @override
  _LabResultsState createState() => _LabResultsState();
}
/*



IF U WANT TO MAKE ETHAN REALLY HAPPEN INSTEAD OF A NEW SCREEN WHEN YOU
CLICK THE TILE A MODAL BOTTOM SHEET POPS UP. SEE THE Health.dart FILE
AND THE CODE BELOW:


*/

/*void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
        ),
        child: Center(
          child: LogEntryAdd(),
          //child: Text("hi"),
        ),
      ),
    );
  }*/

class _LabResultsState extends State<LabResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Results'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: ListTile(
                  onTap: () {},
                  title: Text('Covid Antibody Test'),
                  subtitle: Text('7/14'),
                  leading: const Icon(Icons.assignment_turned_in),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
