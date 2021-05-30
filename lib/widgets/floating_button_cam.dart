import 'package:dvida/Place/ui/screens/ia_cam.dart';
import 'package:flutter/material.dart';

class ButtonCam extends StatelessWidget {
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
            builder: (context) => IACam(),
          ),
        );
      },
      child: Container(
        //alignment: Alignment.topLeft,
        margin: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0),
        height: MediaQuery.of(context).size.width * 0.50, //230.0,
        width: MediaQuery.of(context).size.width * 0.50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(7, 204, 185, 1.0),
              Color.fromRGBO(7, 204, 185, 1.0)
            ],
          ),
        ),

        child: Icon(Icons.add_a_photo),
      ),
      //Icon(Icons.add_a_photo),
    );
  }
}
