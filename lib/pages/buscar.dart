import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_1/pages/mensajes.dart';


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
              margin: EdgeInsets.all(10),
              height: 5,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(  shape: BoxShape.circle, image: DecorationImage( image: AssetImage('assets/images/Perfil1.jpeg')),  ),
          
             
              
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
                    margin: EdgeInsets.only(bottom: 5),
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

               Icon(MdiIcons.cogOutline, color: Colors.white,)

                ],
              ),
            ),
        
      ),

      body: Padding(padding: EdgeInsets.all(1),
      child: Column(
        children: [
          Divider(thickness: 0.2),

          DMPage()


        ],



      ),),
      
     
    );
  }
}