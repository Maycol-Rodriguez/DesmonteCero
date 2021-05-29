import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText;
  int buttonText_number;

  ButtonPurple(this.buttonText, this.buttonText_number);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Navegando"),
        ));
      },
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 2.0),
        height: 230.0,
        width: MediaQuery.of(context).size.width * 0.43,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(62, 74, 134, 0.53),
                  Color.fromRGBO(62, 74, 134, 0.53)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.app_registration,
              color: Color(0xFFf2C611),
            ),
            Container(
              margin: new EdgeInsets.only(top: 60.0, left: 20.0, right: 0.0),
              child: new Text(
                'Tus casos',
                style: Theme.of(context).primaryTextTheme.headline6,
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              buttonText_number.toString(),
              style: Theme.of(context).primaryTextTheme.headline1,
              textAlign: TextAlign.left,
            ),
            Text(
              buttonText,
              style: Theme.of(context).primaryTextTheme.headline6,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
