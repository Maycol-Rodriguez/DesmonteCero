import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      transformAlignment: AlignmentDirectional.bottomEnd,
      height: MediaQuery.of(context).size.height * 0.32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          gradient: LinearGradient(
              colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
