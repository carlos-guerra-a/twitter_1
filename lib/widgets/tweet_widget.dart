import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TweetWidget extends StatefulWidget {
  
  final String perfil;
  final String? nombre;
  final String? arroba;
  final String? hora;
  final String cuerpo;
  final String? imagen;


  TweetWidget({this.perfil = '', this.nombre= '', this.arroba= '', this.hora = '', this.cuerpo= '', this.imagen});

  @override
  State<TweetWidget> createState() => _TweetWidgetState();
}

class _TweetWidgetState extends State<TweetWidget> {
  bool isVisible = false;

  void Ver(){
    if (this.widget.imagen != '') {


      isVisible = true;

    }
    


  }

  @override
  Widget build(BuildContext context) {
    Ver();
    return Container(

      

      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
      padding: EdgeInsets.all(2),
      
       
      color:Color(0xFF14171A) ,
      
      child: 
      
      Column(
        children: [
          Row(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            //foto perfil
            Column(
              children: [
                Container(
                  
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle ,image: DecorationImage(image: AssetImage('assets/images/${(this.widget.perfil)}'))),
                    // child: Image(image: AssetImage('assets/images/${(this.perfil)}'))

                  
                  
                  
                ),
              ],
            ),


            //tuit
            Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.greenAccent)),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                
                //nombre arroba hora
                Container(
            
                  width: 355,
                  // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                    Container(
                      // width: 333,
                      // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(margin: EdgeInsets.only(right: 10), child: Text(this.widget.nombre!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)),
                          Container(margin: EdgeInsets.only(right: 10), child: Text(this.widget.arroba!, style: TextStyle(color: Color(0xFF657786), fontSize: 15 ),)),
                          Container(margin: EdgeInsets.only(right: 0), child: Text("· ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF657786), fontSize: 15 ),)),
                          Container(margin: EdgeInsets.only(right: 10), child: Text(this.widget.hora! , style: TextStyle(color: Color(0xFF657786), fontSize: 15 ))),
                          
                        ],
                      ),
                    ),
                      
                   
                          Container(child: Icon(MdiIcons.dotsVertical, color: Color(0xFF657786), size: 15, )),
                        ],
                      ),
                ),
                  
            
                
            
            
                //tuit  
                Container(
                  padding: EdgeInsets.all(1),
                  width: 350,
                  // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                  child: 
                  
                Text(this.widget.cuerpo, style: TextStyle(color: Colors.white, fontSize: 15), softWrap: true)),

              // imagen del tuit
                
                Visibility(
                
                  visible: isVisible,
                  child: Row(
                    children: [
                      Container(
                
                        margin: EdgeInsets.only(left: 2),
                        height: 350,
                        width: 350,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), 
                        image: DecorationImage(image: AssetImage('assets/images/${(this.widget.imagen)}'))
                        ),
                        
                      ),
                       
                    ],
                  ),
                ),
                
                //  Image(image: AssetImage('assets/images/${(this.imagen)}'), width: 350,),
                
                
                
                //opciones
                Container(
                  padding: EdgeInsets.all(2),
                  // 
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(MdiIcons.messageOutline, color: Color(0xFF657786), size: 18,),
                    Icon(MdiIcons.repeatVariant, color: Color(0xFF657786), size: 22,),
                    Icon(MdiIcons.heartOutline, color:Color(0xFF657786), size: 20,),
                    Icon(MdiIcons.poll, color: Color(0xFF657786), size: 20,),
                    Icon(MdiIcons.shareVariantOutline, color: Color(0xFF657786), size: 17,)
                  ],),
                )
                  
                ],),
              )


            ],),
            Divider(thickness: 0.3)
          ],
        
      )

      ,
      


    );
  }
}