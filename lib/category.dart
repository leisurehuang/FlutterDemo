import 'package:flutter/material.dart';

const _categoryIcon = Icons.cake;

class Category extends StatelessWidget {
  const Category();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        color: Colors.black12,
        child: InkWell(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  _categoryIcon,
                  size: 60.0,
                ),
              ),
              Center(
                  child: Text(
                "cake",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ))
            ],
          ),
          onTap: () {
            print('I was tapped!');
          },
        ));
  }
}
