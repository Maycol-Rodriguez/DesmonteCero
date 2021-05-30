import 'package:flutter/material.dart';

class TextInicial extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30)
        ),

        Container(
          margin: EdgeInsets.only(
            top: 50,
            left: 0,
          ),
          child: Text('Detalle del Caso',
          style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600),
          ),
          
        ),
        Container(
          margin: EdgeInsets.only(
            top: 50,
            left: 40,
          ),
          child: Icon(Icons.close_sharp,size: 40,color: Colors.white,),
        )
      ],
    );
  }
}