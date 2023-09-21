import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/widgets/dm_widget.dart';
import '../constants/dms.dart';



class DMPage extends StatefulWidget {
  const DMPage({super.key});

  @override
  State<DMPage> createState() => _DMPageState();
}

class _DMPageState extends State<DMPage> {
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
                      child: Text("Buscar Mensajes Directos", style: TextStyle(fontSize:  15 ,color: Color(0xFF8899ac)),)),
                    trailing: <Widget>[
                      
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

      body: Padding(padding: EdgeInsets.all(3), 
        child: Column(
          children: [
          Divider(thickness: 0.2),
          Expanded(
            child: ListView(children: dms.map((dm) {
          
          
              return DMWidget(perfil: dm['perfil'].toString(), nombre: dm['nombre'].toString(), arroba: dm['arroba'].toString(), 
              
                tiempo: dm['tiempo'].toString(), mensaje: dm['mensaje'].toString());
          
            }).toList() ),
          )
          ],
        )),


    );
  }
}