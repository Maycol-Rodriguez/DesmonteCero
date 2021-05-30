import 'package:flutter/material.dart';
import 'package:dvida/Place/ui/widgets/description_place.dart';
import 'package:dvida/Place/ui/screens/header_appbar.dart';
import 'package:dvida/Place/ui/widgets/review_list.dart';

class HomeTrips extends StatelessWidget {
  String nombre = "Jordan";
  String apellido = "Rodriguez";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment(1, 1),
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bienvenido", 4, nombre, apellido),
            //ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
