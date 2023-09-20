import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TTWidget extends StatelessWidget {
  
  final String tendencia;
  final String tema;
  final String posts;

  const TTWidget({required this.tendencia, required this.tema, required this.posts});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 10),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(this.tendencia, style: TextStyle(color: Color(0xFF8899ac), fontSize: 13, fontWeight: FontWeight.bold),),
              Icon(MdiIcons.dotsVertical, color: Color(0xFF8899ac), size: 14,),
              
            ],
          ),
          Text(this.tema, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
          Text(this.posts, style: TextStyle(color: Color(0xFF8899ac), fontSize: 13),),

        ],
      ),
    );
  }
}