import 'package:flutter/material.dart';

class DMWidget extends StatelessWidget {

  final String perfil;
  final String nombre;
  final String arroba;
  final String tiempo;
  final String mensaje;

  const DMWidget({required this.perfil, required this.nombre, required this.arroba, required this.tiempo, required this.mensaje});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
                  
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle ,image: DecorationImage(image: AssetImage('assets/images/${(this.perfil)}'))),
                
          ),

          //resto mensaje

          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(margin: EdgeInsets.only(right: 5), child: Text(this.nombre, style: TextStyle(color: Colors.white, fontSize: 16),)),
                    Container(margin: EdgeInsets.only(right: 5), child: Text(this.arroba, style: TextStyle(color: Color(0xFF657786), fontSize: 15 ),)),
                    Container(margin: EdgeInsets.only(right: 0), child: Text("· ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF657786), fontSize: 15 ),)),
                    Container(margin: EdgeInsets.only(right: 5), child: Text(this.tiempo , style: TextStyle(color: Color(0xFF657786), fontSize: 15 ))),
                  ],
                ),

                Container(
                  child: 
                  Text(this.mensaje, style: TextStyle(color: Color(0xFF657786), fontSize: 16 )),
                )
                
              ],

          )


        ],




      ),
    );
  }
}