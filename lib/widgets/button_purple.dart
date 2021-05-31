import 'package:dvida/Place/ui/screens/search_trips.dart';
import 'package:dvida/Place/ui/screens/statistics.dart';
import 'package:dvida/widgets/floating_icon.dart';
import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText;
  int buttonText_number;
  final Color color_unico;
  final IconData icono;
  int next_page;

  final List<Widget> widgetsChildren = [
    StatisticDZero(),
    mapas_(),
  ];

  ButtonPurple(this.buttonText, this.buttonText_number, this.color_unico,
      this.icono, this.next_page);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final boton = ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widgetsChildren[next_page]),
        );
      },
      child: Container(
        //alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 20.0, bottom: 0.0, left: 0.0, right: 0),
        height: MediaQuery.of(context).size.height * 0.30, //230.0,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(62, 74, 134, 0.53),
              Color.fromRGBO(62, 74, 134, 0.53)
            ],
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(
                  top: 60.0,
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.05,
                  right: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    buttonText_number.toString(),
                    style: Theme.of(context).primaryTextTheme.headline2,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    buttonText,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return Stack(
      alignment: Alignment(0.6, -0.7),
      children: <Widget>[
        boton,
        FloatingIcon(color_unico, icono), //replay_circle_filled_rounded
      ],
    );
  }
}
