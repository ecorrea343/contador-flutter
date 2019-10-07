import 'package:camionapp/src/pages/contador_page.dart';
//import 'package:camionapp/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class Myapp extends StatelessWidget {

  @override
  build( context )
  {
    return MaterialApp(

        home:Center(
          
          child: ContadorPage(),
          //child: HomePage(),
        
         ),
    );

  }

}