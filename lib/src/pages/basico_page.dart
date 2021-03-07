import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 16, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
           child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),     
              _crearTexto(),                  
            ],
           ),
          ),
      );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('loading.gif'), 
        image: NetworkImage('https://www.turismodeobservacion.com/media/fotografias/puente-romano-en-cangas-de-onis-asturias-28130-xl.jpg'),
        height: 300,
        fit: BoxFit.cover
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            children: <Widget>[                    
              Expanded(
                  child: Column(
                    crossAxisAlignment : CrossAxisAlignment.start,
                    children: <Widget>[
                      Title(color: Colors.black, child: Text('Puente de Cangas de Onis', style: estiloTitulo,)),
                      SizedBox(height: 6),
                      Text('Este puente se encuentra en Cangas de Onis, Asturias',style: estiloSubtitulo,)                      
                    ],
                  ),
              ),
              Icon(Icons.star, color: Colors.red,size: 30),
              Text('41',style: TextStyle(fontSize: 25))
            ],
          ),  
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _nuevaAccion(Icons.call, 'CALL'),
        _nuevaAccion(Icons.near_me, 'ROUTE'),
        _nuevaAccion(Icons.share,'SHARE'),
      ],
    );
  }

  Widget _nuevaAccion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon,color: Colors.blue,size: 40,),
        SizedBox(height: 7,),
        Text(texto, style: TextStyle(fontSize: 15, color: Colors.blue),)
      ],
    );
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      child: Text('Incididunt fugiat dolore ea officia eiusmod. Proident magna qui sit sit fugiat officia minim voluptate mollit. Adipisicing nostrud esse duis consequat eiusmod quis. Nisi anim est cillum eiusmod aliqua nostrud reprehenderit consequat reprehenderit officia aute labore aute. Irure laboris excepteur do adipisicing magna eu est officia ex reprehenderit Lorem deserunt id irure. Velit amet magna officia ad anim irure voluptate enim minim nisi. Dolor mollit irure laborum adipisicing ullamco aliquip enim. Eu in Lorem excepteur est ad elit enim deserunt commodo enim sint veniam aliqua consectetur. Esse ut commodo reprehenderit consequat qui. Fugiat velit proident consequat in consectetur fugiat quis non nulla. Non enim fugiat nisi occaecat eu. Elit aliquip exercitation mollit ex nisi et ipsum minim. Dolor aliqua aute qui incididunt consequat amet eu aliqua est nisi aliqua ea in. Eiusmod mollit laborum quis reprehenderit velit. Ipsum pariatur aute ullamco laborum occaecat aliqua aliquip nostrud. Occaecat anim adipisicing et est ex amet anim aute ipsum aliqua est adipisicing.',
      textAlign: TextAlign.justify,
      )
      );
  }


}