import 'package:disenios_flutter/src/pages/basico_page.dart';
import 'package:disenios_flutter/src/pages/botones_page.dart';
import 'package:disenios_flutter/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Cambiar el color de la barra de notificaciones
    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(

      statusBarColor: Colors.white
    ));*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
      },
    );
  }
}