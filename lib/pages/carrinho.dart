import 'package:aplicacaoambevleve/pages/EntrarLoja.dart';
import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:flutter/material.dart';


class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encoste esse QR Code na catraca'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Entrar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QrCodeScan(text: null)),
            );
          },
        ),
      ),
    );
  }
}