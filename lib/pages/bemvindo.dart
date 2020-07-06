import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';


class BemVindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('Seja Bem Vindo'),
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