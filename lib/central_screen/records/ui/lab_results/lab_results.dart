import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/records/ui/lab_results/lab_results_tile.dart';

class LabResults extends StatefulWidget {
  @override
  _LabResultsState createState() => _LabResultsState();
}

/*



IF U WANT TO MAKE ETHAN REALLY HAPPEN INSTEAD OF A NEW SCREEN WHEN YOU
CLICK THE TILE A MODAL BOTTOM SHEET POPS UP. SEE THE Health.dart FILE
AND THE CODE BELOW:

I GUESS I MADE ETHAN HAPPY :)


*/

class _LabResultsState extends State<LabResults> {
  final List<LabResultsTile> results = <LabResultsTile>[
    LabResultsTile(),
    LabResultsTile()
  ];

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
            itemCount: results.length,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Container(
                  child: results[index],
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Theme
                        .of(context)
                        .primaryColor,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(4.0),
                      topRight: const Radius.circular(4.0),
                      bottomLeft: const Radius.circular(4.0),
                      bottomRight: const Radius.circular(4.0),
                    ),
                  ),
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

class StackedList extends StatelessWidget {
  final List<Color> _colors = Colors.primaries;
  static const _minHeight = 16.0;
  static const _maxHeight = 120.0;

  @override
  Widget build(BuildContext context) =>
      CustomScrollView(
        slivers: _colors
            .map(
              (color) =>
              StackedListChild(
                minHeight: _minHeight,
                maxHeight: _colors.indexOf(color) == _colors.length - 1
                    ? MediaQuery
                    .of(context)
                    .size
                    .height
                    : _maxHeight,
                pinned: false,
                child: Container(
                  color: _colors.indexOf(color) == 0
                      ? Colors.black
                      : _colors[_colors.indexOf(color) - 1],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(_minHeight)),
                      color: color,
                    ),
                  ),
                ),
              ),
        )
            .toList(),
      );
}

class StackedListChild extends StatelessWidget {
  final double minHeight;
  final double maxHeight;
  final bool pinned;
  final bool floating;
  final Widget child;

  SliverPersistentHeaderDelegate get _delegate =>
      _StackedListDelegate(
          minHeight: minHeight, maxHeight: maxHeight, child: child);

  const StackedListChild({
    Key key,
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
    this.pinned = false,
    this.floating = false,
  })
      : assert(child != null),
        assert(minHeight != null),
        assert(maxHeight != null),
        assert(pinned != null),
        assert(floating != null),
        super(key: key);

  @override
  Widget build(BuildContext context) =>
      SliverPersistentHeader(
          key: key, pinned: pinned, floating: floating, delegate: _delegate);
}

class _StackedListDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _StackedListDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_StackedListDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}


class CurryFormScreen extends StatefulWidget {
  @override
  _CurryFormScreenState createState() => _CurryFormScreenState();
}

class _CurryFormScreenState extends State<CurryFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> _nameList = ['test'];

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }

        return null;
      },
      onSaved: (String value) {
        setState(() {
          _nameList.add(value);
        });
      },
    );
  }

  Widget _buildListWidget(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState.validate()) {
      return;
    }

    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    print(_nameList.toString());

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Coding with Curry'),
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'https://chefjet.com/wp-content/uploads/2017/06/Jet-Tila-Thai-Chicken-Curry.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          //CurrySliverHeader(Colors.purple, "Header 1"),
          //CurrySliverHeader(Colors.deepPurple, "Header 2"),
          SliverFixedExtentList(

            itemExtent: 150,
            delegate: SliverChildListDelegate([
              _buildListWidget(Colors.purple, "Curry"),
              _buildListWidget(Colors.blue, "Rice"),
              _buildListWidget(Colors.purple, "Pizza"),
              _buildListWidget(Colors.blue, "Hamburger"),
              _buildListWidget(Colors.purple, "Noodles"),
              _buildListWidget(Colors.blue, "Eggs"),
              _buildListWidget(Colors.purple, "Salad"),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Add Name', style: TextStyle(fontSize: 22)),
                      _buildNameField(),
                      SizedBox(height: 16),
                      RaisedButton(
                        child: Text('Submit'),
                        onPressed: _submit,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
            delegate: SliverChildBuilderDelegate((BuildContext context,
                int index) {
              return Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple,
                child: Center(
                  child: Text(
                    _nameList[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            },
                childCount: _nameList.length
            ),
          )
        ],
      ),
    );
  }
}