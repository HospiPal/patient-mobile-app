import 'package:flutter/material.dart';

class CareTeam extends StatefulWidget {
  @override
  _CareTeamState createState() => _CareTeamState();
}

class _CareTeamState extends State<CareTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        FlatButton(
          textColor: Colors.white,
          child: Text('Logout'),
          onPressed: () {},
        )
      ]),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            itemCount: 4,
            itemBuilder: (context, index) {
              //TODO: look into resizing the card
              return Card(
                child: Column(
                  children: <Widget>[
                    //TODO: look into button bar theme
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.face),
                          onPressed: () {},
                        ),
                        IconButton(icon: Icon(Icons.message), onPressed: () {}),
                        IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),

//            child: GridView.count(
//                padding: const EdgeInsets.all(20),
//                crossAxisSpacing: 10,
//                mainAxisSpacing: 10,
//                crossAxisCount: 2,
//                children: List.generate(20, (index) {
//                  return Container(
//                    padding: const EdgeInsets.all(8),
//                    child: CircleAvatar(
//                      child: Text('$index'),
//                    ),
//                  );
//                })),
      ),
    );
  }
}
