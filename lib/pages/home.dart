import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/pages/para_ti.dart';
import 'package:twitter_1/pages/siguiendo.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF14171A),
          leading: 
            Container(
              margin: EdgeInsets.all(10),
              height: 5,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(  shape: BoxShape.circle, image: DecorationImage( image: AssetImage('assets/images/Perfil1.jpeg')),  ),
          
             
              
              // Image(image: AssetImage('assets/images/Perfil1.jpeg'))
              
            ),
          
          centerTitle: true ,
          title: Icon(MdiIcons.twitter, color: Color(0xFF1DA1F2), size: 35,),


          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor:Color(0xFF1DA1F2),
            unselectedLabelColor: Color(0xFF657786),
            labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)    ,      
            
            tabs: [
              Tab(text: "Para ti",),
              Tab(text: "Siguiendo",)
            ]),


        ),

        body: TabBarView(children: [
            ParaTiPage(),
            SiguiendoPage()


        ]


        ),






      ),

    );
  }
}
  