import 'package:flutter/material.dart';
import 'package:twitter_1/widgets/tweet_widget.dart';
import '../constants/tweets_prueba.dart';

class ParaTiPage extends StatelessWidget {
  const ParaTiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF14171A),
        body : 
        
        
        ListView(
          
          children: tuiteres.map((tuit) {

            return TweetWidget(
              
              perfil: tuit['perfil'].toString() ,
              cuerpo: tuit['cuerpo'].toString() ,
              nombre: tuit['nombre'].toString() ,
              arroba: tuit['arroba'].toString() ,
              hora: tuit['hora'].toString() ,
              imagen: tuit['imagen'].toString() ,
            );

          } ).toList(),

        )
        
        
        
    );
  }
}