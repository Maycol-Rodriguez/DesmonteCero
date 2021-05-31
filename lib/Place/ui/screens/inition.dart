import 'package:dvida/Place/ui/screens/ia_cam_detalle_puntaje.dart';
import 'package:dvida/dzero_app.dart';
import 'package:flutter/material.dart';

class GoInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FloatingActionButton(
        backgroundColor: Color.fromRGBO(7, 204, 185, 1.0),
        mini: true,
        tooltip: "Open Cam",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DZeroApp(),
            ),
          );
        },
        child: Container(
          //alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0),
          //height: MediaQuery.of(context).size.width * 2.2, //230.0,
          //width: MediaQuery.of(context).size.width * 1,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(7, 204, 185, 1.0),
                Color.fromRGBO(7, 204, 185, 1.0)
              ],
            ),
          ),

          child: Image(image: AssetImage('assets/01image/app_login.png')),
        ),
        //Icon(Icons.add_a_photo),
      ),
    );
  }
}
