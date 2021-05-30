import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        
        TableRow(
          children: [
            _SingleCard(color: Colors.white,icon: Icons.add_photo_alternate_rounded,texto: 'Imagenes'),
            _SingleCard(color: Colors.purple,icon: Icons.play_circle_fill_sharp,texto: 'Videos'),
          ],
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.white,icon: Icons.mic_rounded,texto: 'Grabaciones'),
            _SingleCard(color: Colors.red,icon: Icons.text_snippet_rounded,texto: 'Documentos'),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String texto;

  const _SingleCard(
    {Key? key, 
    required this.icon, 
    required this.color, 
    required this.texto}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //centra la columna
        children: [
          CircleAvatar(
            backgroundColor: this.color, //color del fondo del icono
            child: Icon(icon, size: 35), //icono
            radius: 20, //tamaño del radio
          ),
          SizedBox(height: 20),
          Text(this.texto, style: TextStyle(fontSize: 18, color: this.color)),
        ],
      ),
    );
  }
}
