import 'package:flutter/material.dart';
import 'package:dvida/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/01image/desmontes/desmonte01.jpg"),
          CardImage("assets/01image/desmontes/desmonte02.jpg"),
          CardImage("assets/01image/desmontes/desmonte03.jpg"),
          CardImage("assets/01image/desmontes/desmonte04.jpg"),
          CardImage("assets/01image/desmontes/desmonte05.jpg"),
        ],
      ),
    );
  }
}
