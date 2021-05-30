import 'package:dvida/widgets/floating_button_cam.dart';
import 'package:dvida/widgets/floating_button_perfil.dart';
import 'package:flutter/material.dart';
import 'package:dvida/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String nombre;
  String apellido;

  DescriptionPlace(this.namePlace, this.stars, this.nombre, this.apellido);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final bienvenido = Container(
      margin: EdgeInsets.only(
          top: 40.0,
          left: MediaQuery.of(context).size.width * 0.05,
          right: 20.0),
      child: Text(
        namePlace,
        style: Theme.of(context).primaryTextTheme.headline6,
        textAlign: TextAlign.left,
      ),
    );

    final nombres = Container(
      margin: new EdgeInsets.only(
          top: 20.0,
          left: MediaQuery.of(context).size.width * 0.05,
          right: 20.0),
      child: new Text(
        nombre,
        style: Theme.of(context).primaryTextTheme.headline4,
      ),
    );

    final apellidos = Container(
      margin: new EdgeInsets.only(
          top: 0.0,
          left: MediaQuery.of(context).size.width * 0.05,
          right: 20.0),
      child: new Text(
        apellido,
        style: Theme.of(context).primaryTextTheme.headline4,
      ),
    );

    final tus_casos = Container(
      margin: new EdgeInsets.only(
          top: 60.0,
          left: MediaQuery.of(context).size.width * 0.05,
          right: 0.0),
      child: new Text(
        'Tus casos',
        style: Theme.of(context).primaryTextTheme.subtitle1,
        textAlign: TextAlign.left,
      ),
    );

    final composicion_nombre = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        bienvenido,
        nombres,
        apellidos,
        tus_casos,
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonPurple(
                "Casos registrados",
                5,
                Color.fromRGBO(7, 204, 185, 1.0),
                Icons.replay_circle_filled_rounded,
                0,
              ),
              ButtonPurple(
                "Casos en tu zona",
                25,
                Color.fromRGBO(175, 67, 255, 1.0),
                Icons.zoom_out_map,
                1,
              ),
            ],
          ),
        ),
      ],
    );

    return Stack(
      alignment: Alignment(0.6, -0.8),
      children: [
        ButtonPerfil(),
        composicion_nombre,
      ],
    );
  }
}
