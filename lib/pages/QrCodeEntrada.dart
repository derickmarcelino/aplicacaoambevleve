import 'package:aplicacaoambevleve/pages/bemvindo.dart';
import 'package:aplicacaoambevleve/pages/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';

class QRCodeEntrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: incluiStack(context),
    );
  }
}

Widget incluiStack(BuildContext context) {
  return Stack(
    children: <Widget>[
   
      
      Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("\nPara liberar sua entrada,\nAproxime o QR Code da catraca",
      style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'Roboto')),
      ),
     GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/qrcodescan'); 
          _showAlert(context);},
      child: Image.network(
'https://lh3.googleusercontent.com/ufwUy4SGVTqCs8fcp6Ajxfpae0bNImN1Rq2cXUjWI7jlmNMCsXgQE5C3yUEzBu5Gadkz=s180-rw',
        width: 500,
        height: 500,
        
      ),),
       
    ],
  );


}


 void _showAlert(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Entrada Liberada"),
            content: Text("Seja Bem Vindo"),
             actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
          )
      );
    }
  
  

