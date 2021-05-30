import 'package:flutter/material.dart';

class FloatingIcon extends StatefulWidget {
  final Color color_unico;
  final IconData icono;
  FloatingIcon(@required this.color_unico, @required this.icono);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingIcon();
  }
}

class _FloatingIcon extends State<FloatingIcon> {
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: widget.color_unico,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(widget.icono),
    );
  }
}
