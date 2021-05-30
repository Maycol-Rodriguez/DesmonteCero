import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Text('Antescedentes',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          SizedBox(height: 50, width: 40),
          Text('Medios',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
        ]),
      ),
    );
  }
}
