import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);


  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        color: Colors.transparent,
        child: InkWell(
          highlightColor: color,
          splashColor: color,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Center(
                  child: Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ))
            ],
          ),
          onTap: () {
            print('I was tapped!');
            _navigateToConverter(context);
          },
        ));
  }
}
