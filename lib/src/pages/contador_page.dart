import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState(); 

}

class _ContadorPageState extends State <ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(// Columna con muchos hijos 
          mainAxisAlignment: MainAxisAlignment.center,// posicionamiento de los elementos en el centro ".center"
          children: <Widget>[//hijos con elementos Widget para poder colocar mas elementos que de forma nativa no puede
            Text( 'Número de taps:', style: _estiloTexto ),
            Text( '$_conteo'  , style: _estiloTexto ), //Interpolacion de String en vez de _conteo.ToString() colocamos '$conteo'
          ],
        )
      ),
      floatingActionButton: _crearBotones()// metodo declarado mas abajo
    );
  }

  //    Metodos

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end, // posicion de los elementos
      children: <Widget>[
          SizedBox(width: 30),// caja para que el botn de reseteo no salga de el Scaffold
          FloatingActionButton (child: Icon(Icons.exposure_zero), onPressed:_reset), // boton de reseteo
          Expanded(child:SizedBox()),// un expansoprt que da una false idea de vacio entre elementos
          FloatingActionButton (child: Icon(Icons.remove), onPressed:_sustraer),    //boton de resta
          SizedBox(width:5),// caja con size de (0.0) por edefecto que permite hacer espacios como el <div>
          FloatingActionButton (child: Icon(Icons.add), onPressed:_agregar),        //boton de agrear
            //en el onPressed llamamos un metodo _agregar que no le colocamos "()" porqeu no queremos que se ejecute con la app , solo al presionar  
      ],
    ) ;  

  }

  void _agregar(){ setState(() => _conteo++ ); }// El metodo setState sirve para dibujar la pantalla 
  void _sustraer(){ setState(() => _conteo-- ); }
  void _reset(){ setState(() => _conteo = 0  ); }
  
}

