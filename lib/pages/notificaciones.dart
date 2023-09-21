import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/pages/notificaciones/menciones.dart';
import 'package:twitter_1/pages/notificaciones/todas.dart';
import 'package:twitter_1/pages/notificaciones/verificado.dart';


class NotificacionesPage extends StatelessWidget {
  const NotificacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF14171A),    
        appBar: AppBar(
        backgroundColor: Color(0xFF14171A),    
          
          leading: 
              Container(
                margin: EdgeInsets.all(12),
                height: 32,
                width: 32,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage( image: AssetImage('assets/images/Perfil1.jpeg')),  ),
              ),
    
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notificaciones", style: TextStyle(color: Colors.white, fontSize: 25),),
              Icon(MdiIcons.cogOutline, color: Colors.white, size: 30,)
    
            ],
          ),
    
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor:Color(0xFF1DA1F2),
              indicatorWeight: 3 ,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
              indicatorSize: TabBarIndicatorSize.tab ,
              unselectedLabelColor: Color(0xFF657786),
              labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)    ,      
              
              tabs: [
                Tab(text: "Todas"),
                Tab(text: "Verificado"),
                Tab(text: "Menciones",)
              ]),
        ),
    
        body: TabBarView(children: [
            TodasPage(),
            VerificadoPage(),
            MencionesPage()
        ]


        ),
    
    
    
        
      ),
    );
  }
}