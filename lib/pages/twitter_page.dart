import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/pages/home.dart';

class TwitterPage extends StatefulWidget {
  const TwitterPage({super.key});

  @override
  State<TwitterPage> createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {

int seleccionada = 0;
Widget pagina = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pagina,

      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,  
      items: 
      
      [
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF14171A),
          label: '',
          icon: Icon(MdiIcons.home, size: 30,)),

        BottomNavigationBarItem(
          label: '',
          backgroundColor: Color(0xFF14171A),
          icon: Icon(MdiIcons.magnify, size: 30,)),

        BottomNavigationBarItem(
          backgroundColor: Color(0xFF14171A),
          label: '',
          icon: Icon(MdiIcons.bellOutline, size:  25,)),

        BottomNavigationBarItem(
          label: '',
          backgroundColor: Color(0xFF14171A),
          icon: Icon(MdiIcons.emailOutline, size: 28,))



      ]),


      

    );
  }
}