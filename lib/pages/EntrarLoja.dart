import 'package:aplicacaoambevleve/pages/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';


class EntrarLoja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Para Obter acesso a Loja, aproxime o QR Code na Catraca'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Entrar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Carrinho()),
            );
          },
        ),
      ),
    );
  }
}


@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }