import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.face,
                size: 80,
                color: Theme.of(context).accentColor,
              ),
              radius: 50.0,
            ),
            Text(
              'Dr. Anish Rana',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    '+847 830 9221',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'arana@urmc.rochester.edu',
                    style: TextStyle(
                        fontSize: 15.0, fontFamily: 'Source Sans Pro'),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
//                  leading: Icon(
//                    Icons.email,
//                    color: Theme.of(context).primaryColor,
//                  ),
//                  title: Text(
//                    'arana@urmc.rochester.edu',
//                    style: TextStyle(
//                        fontSize: 15.0,
//                        fontFamily: 'Source Sans Pro'),
//                  ),
                    )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
//                  leading: Icon(
//                    Icons.email,
//                    color: Theme.of(context).primaryColor,
//                  ),
//                  title: Text(
//                    'arana@urmc.rochester.edu',
//                    style: TextStyle(
//                        fontSize: 15.0,
//                        fontFamily: 'Source Sans Pro'),
//                  ),
                    )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
//                  leading: Icon(
//                    Icons.email,
//                    color: Theme.of(context).primaryColor,
//                  ),
//                  title: Text(
//                    'arana@urmc.rochester.edu',
//                    style: TextStyle(
//                        fontSize: 15.0,
//                        fontFamily: 'Source Sans Pro'),
//                  ),
                    ))
          ],
        ),
      ),
    );
  }
}
