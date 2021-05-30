import 'package:dvida/widgets/floating_button_cam.dart';

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

    final cuerpo_princial = Stack(
      alignment: Alignment(1, 1),
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bienvenido", 4, nombre, apellido),
            //ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );

    return Stack(
      alignment: Alignment(.8, 0.4),
      children: [
        cuerpo_princial,
        ButtonCam(),
      ],
    );
  }
}
