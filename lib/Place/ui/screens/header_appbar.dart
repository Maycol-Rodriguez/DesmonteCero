import 'package:flutter/material.dart';
import 'package:dvida/widgets/gradient_back.dart';
import 'package:dvida/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[GradientBack("Últimos casos"), CardImageList()],
    );
  }
}
