import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    //Definiendo el estilod e nuestra aplicacion 
      final estiloTitulos =  TextStyle (fontSize: 30);
      final estiloSubtitulos = TextStyle (fontSize: 25);

      final int conteo = 10;


    // 
    
    return Scaffold(

        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //lOS VALORES DE LOS WIFGET EN ESTE CASO SON DOUBLE PERO IGAUL SE PUEDEN COLOCAR EN ENTEROS

               Text('Numero de Clicks :', style: estiloTitulos ), 
               Text('$conteo', style: estiloSubtitulos) ,//Interpolacion de String en vez de colocar conteo.ToString() , colocamos '$conteo'
               
            ],
          ) 
        ),
        
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //Codigo para cambiart posicionde el boton dentro el el Scaffolid
        floatingActionButton: FloatingActionButton(
                  
          child: Icon( Icons.add),
          
          onPressed:() {

              print('Hola Mundo');

          },
        ),
    ); 
  }
}