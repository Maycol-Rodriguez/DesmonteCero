//import 'package:dvida/Place/ui/screens/home.dart';
import 'package:dvida/multimedia/widgets/background.dart';
import 'package:dvida/multimedia/widgets/card_table.dart';
import 'package:dvida/multimedia/widgets/etiquetas.dart';
import 'package:dvida/multimedia/widgets/pages_title.dart';
import 'package:dvida/multimedia/widgets/text_inicial.dart';
import 'package:flutter/material.dart';

class StatisticDZero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          //Scroll View
          _HomeBody(),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextInicial(),
          //Titulos
          PageTitle(),

          //Card table(Botones)
          CardTable(),

          Etiquetas(),
        ],
      ),
    );
  }
}
