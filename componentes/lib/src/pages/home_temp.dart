import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones=['Uno','Dos','Tres','Cuatro','Cinco'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),

      body: ListView( 

        //children: _crearItems()

        children: _crearrItemsCorta()

        // Forma de Hacer una lista 
       /* children: <Widget>[

          ListTile(
            title: Text('ListTile Title'),
          ),
         Divider(),
        
         ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),

          ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),
          
        ],*/

      ),
      
    );
  }
  List<Widget> _crearItems(){

    List<Widget> lista =new List<Widget>();

    for (String opt in opciones) {
      
      final tempWidget =ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)  // operador de cascada
        ..add(Divider());

       //lista.add(Divider()); forma normal

    }

    return lista;
}
    List<Widget> _crearrItemsCorta(){    // crear lista corta
      var widgets = opciones.map((item){
        
          return Column(
            children: <Widget>[
              ListTile(
               title: Text(item+ '!'),
               subtitle: Text('Numeros numeros'),
               leading: Icon(Icons.ac_unit),
               trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},

        ),

        Divider()
            ],
          );
      }).toList();
      
        return widgets;
    }
     
}
