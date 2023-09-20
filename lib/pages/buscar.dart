import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/pages/mensajes.dart';
import 'package:twitter_1/widgets/tt_widget.dart';
import '../constants/trending.dart';


class BuscarPage extends StatefulWidget {
  const BuscarPage({super.key});

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
             
              
              // Image(image: AssetImage('assets/images/Perfil1.jpeg'))
              
            ),
          
          centerTitle: false ,
          
          title:
            Container(
              
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            
                  Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(bottom: 0),
                    width: 280,
                    height: 40,
                    child: SearchAnchor(
                    builder: (BuildContext context, SearchController controller) {
                                  return SearchBar(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF243447)),
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 0.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: Container( 
                      margin: EdgeInsets.only(left: 8), 
                      child: Text("Buscar en Twitter", style: TextStyle(fontSize:  15 ,color: Color(0xFF8899ac)),)),
                    trailing: <Widget>[
                      // Tooltip(
                      //   message: 'Change brightness mode',
                      //   child: IconButton(
                      //     isSelected: isDark,
                      //     onPressed: () {
                      //       setState(() {
                      //         isDark = !isDark;
                      //       });
                      //     },
                      //     icon: const Icon(Icons.wb_sunny_outlined),
                      //     selectedIcon: const Icon(Icons.brightness_2_outlined),
                      //   ),
                      // )
                    ],
                                  );
                                }, suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                                  return List<ListTile>.generate(0, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                                  });
                                }),
                  ),

               Icon(MdiIcons.cogOutline, color: Colors.white, size: 30,)

                ],
              ),
            ),
        
      ),

      body: Padding(padding: EdgeInsets.all(1),
      child: Column(
        children: [
          Divider(thickness: 0.2),
          Row(children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Text("Tendencias para ti", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),))
          ],),

          //widget de tendencias

         
            // flex:2,
          Column(children:
            trending.map((trend) {
          
              return TTWidget(tendencia: trend['tendencia'].toString(), tema: trend['tema'].toString(), posts: trend['posts'].toString(),);
          
            }).toList()
            
            ),
          

          //boton mostrar más

         
            // flex: 1,
           Expanded(
             child: Container(
                padding: EdgeInsets.all(5),
                // height: 290,
                // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mostrar más", style: TextStyle(color: Color(0xFF1D9BF0), fontSize: 15) ,),
                  ],
                ),
              ),
           ),
          
          

        ],



      ),),
      
     
    );
  }
}