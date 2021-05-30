import 'package:flutter/material.dart';

class Etiquetas extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 33,
                left: 20,
              ),
              child: Icon(Icons.remove,color: Colors.white),
            ),

            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 10,
              ),
              
              child: Text('1 Agente involucrado',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white
              )),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 80,
              ),
              child: Text('Mayo 30, 2021',
              style: TextStyle(color: Colors.white),
              )
            ),
          ],
        ),


        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 33,
                left: 20,
              ),
              child: Icon(Icons.remove,color: Colors.white),
            ),

            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 10,
              ),
              
              child: Text('2 Personas involucradas',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white
              )),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 80,
              ),
              child: Text('Mayo 30, 2021',
              style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.add_box_outlined,color: Colors.white),
                  iconSize: 60,
                  splashRadius: 25,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
