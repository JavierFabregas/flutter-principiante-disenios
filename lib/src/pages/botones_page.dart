import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.5, 0.7) ,
          end: FractionalOffset(0.5, 1),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ]
          )
      ),
    );

  final cuadradoRosa = Transform.rotate(
    angle: -pi / 4.0,
    child: Container(
    height: 400,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      gradient: LinearGradient(colors: [
        Color.fromRGBO(236, 98, 188, 1),
        Color.fromRGBO(241, 142, 172, 1)
      ]),
      color: Colors.pink
    ),

  ),
    );
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -60,
          left: -30,
          child: cuadradoRosa
          )
      ],  
    );

  }

  Widget _titulos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Classify transaction',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Classify this transaction into a particular category',style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1))
        )
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today, size: 30,)
            ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart, size: 30,)
            ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle, size: 30,)
            )
        ]
        ),
    );

  }

  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _botonRedondeado(Colors.blueAccent,Icons.border_all,'General'),
            _botonRedondeado(Colors.purpleAccent,Icons.border_color,'Editar'),
          ],
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.greenAccent,Icons.bubble_chart,'Google'),
            _botonRedondeado(Colors.indigoAccent,Icons.bluetooth,'Bluetooth'),
          ],
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.yellowAccent,Icons.favorite,'Assitente'),
            _botonRedondeado(Colors.deepOrangeAccent,Icons.chat,'Chat'),
          ],
        ),
        TableRow(
          children: [
            _botonRedondeado(Colors.redAccent,Icons.cloud,'Cloud'),
            _botonRedondeado(Colors.limeAccent,Icons.content_cut,'Cortar'),
          ],
        ),
      ],
    );
  }

  Widget _botonRedondeado(Color color, IconData icono, String texto){

    return ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    SizedBox(height: 5),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: color,
                      child: Icon(icono, color: Colors.white,size: 30,),
                    ),
                    Text(texto, style: TextStyle(color: color, fontSize: 25),),
                    SizedBox(height: 5)
                  
                  ],
                ),
              ),
        ),
    );
  }

}