import 'package:flutter/material.dart';
import 'package:dvida/Place/ui/screens/home_trips.dart';
import 'package:dvida/Place/ui/screens/search_trips.dart';
import 'package:dvida/User/ui/screens/profile_trips.dart';

class DZeroApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DZeroApp();
  }
}

class _DZeroApp extends State<DZeroApp> {
  int indexTap = 1;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[0],
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
