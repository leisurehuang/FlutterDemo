import 'package:flutter/material.dart';
import 'package:hello_rectangle/category_route.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _bottomNavigation;

  @override
  void initState() {
    super.initState();
    _bottomNavigation = TabController(
      vsync: this,
      length: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TabBarView(
        controller: _bottomNavigation,
        children: [
          CategoryRoute(),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: TabBar(
          controller: _bottomNavigation,
          tabs: <Tab>[
            Tab(
              text: "A",
              icon: Icon(Icons.cake),
            ),
            Tab(
              text: "B",
              icon: Icon(Icons.directions_transit),
            ),
            Tab(
              text: "C",
              icon: Icon(Icons.directions_bike),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: HomePage(),
    ),
  );
}
