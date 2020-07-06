import 'dart:io';

import 'package:aplicacaoambevleve/main.dart';
import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:flutter/material.dart';


class VolteSempre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Volte Sempre'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
    );
  }
}