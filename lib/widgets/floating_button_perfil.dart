import 'package:dvida/Place/ui/screens/perfil.dart';
import 'package:flutter/material.dart';

class ButtonPerfil extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(7, 204, 185, 1.0),
      mini: false,
      tooltip: "Open Cam",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PerfilScreen(),
          ),
        );
      },
      child: Container(
        //alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0),
        height: 30, //230.0,
        width: 30,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/01image/jordan.jpg'),
          ),
        ),
      ),
    );
  }
}
