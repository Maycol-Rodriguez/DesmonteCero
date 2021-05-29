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

    final star_half = Container(
      margin: EdgeInsets.only(top: 20.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 20.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 20.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: Theme.of(context).primaryTextTheme.headline5,
            textAlign: TextAlign.left,
          ),
        ),
        Row(
            //children: <Widget>[star, star, star, star, star_half],
            )
      ],
    );

    final nombres = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        nombre,
        style: Theme.of(context).primaryTextTheme.headline3,
      ),
    );

    final apellidos = Container(
      margin: new EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
      child: new Text(
        apellido,
        style: Theme.of(context).primaryTextTheme.headline3,
      ),
    );

    final tus_casos = Container(
      margin: new EdgeInsets.only(top: 60.0, left: 20.0, right: 0.0),
      child: new Text(
        'Tus casos',
        style: Theme.of(context).primaryTextTheme.headline6,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        nombres,
        apellidos,
        tus_casos,
        Row(children: <Widget>[
          ButtonPurple("Casos registrados", 5),
          ButtonPurple("Casos en tu zona", 25)
        ])
      ],
    );
  }
}
