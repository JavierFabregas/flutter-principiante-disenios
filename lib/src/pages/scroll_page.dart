import 'package:flutter/material.dart';
class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina(),
          _pagina2()
        ],
      )

    );
  }

  Widget _pagina() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );  
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _boton(),
      ],
    );  
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1)
    );
  }
  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:  
      Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 60);
    return SafeArea(
          child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Text('11º', style: estiloTexto),
            Text('Martes', style: estiloTexto),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, size: 150, color: Colors.white)
          ],
        ),
    );
  }

  Widget _boton(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 20);
    return SafeArea(          
          child: Center(
            child: RaisedButton(     
              shape: StadiumBorder(),   
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('Boton centrado',style: estiloTexto),
              ),
              onPressed: (){}
        ),
          ),
    );
    
  }
}
