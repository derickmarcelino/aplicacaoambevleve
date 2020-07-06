import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';


class CartaoCredito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('Compra Realizada'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QrCodeScan(text: null)),
            );
          },
        ),
      ),
      drawer: NavDrawer(),
      
    );
      
  }

 
}