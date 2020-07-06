import 'package:aplicacaoambevleve/models/produtos.dart';
import 'package:aplicacaoambevleve/pages/Demonstrativo.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:aplicacaoambevleve/widgets/logger.dart';
import 'package:aplicacaoambevleve/models/produto.dart';

import 'cartaocredito.dart';

class QrCodeScan extends StatefulWidget {
  var text;
 
  
  QrCodeScan({Key key, @required this.text}) : super(key: key);
  @override
  _QrCodeScanState createState() => _QrCodeScanState();
}
bool _isButtonDisabled = true;
List<String> _products = [];
@override
class _QrCodeScanState extends State<QrCodeScan> {
 
  Logger log = getLogger("QrCodeScan");
  String result = "teste";
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      log.i(qrResult);
      setState(() {
        result = qrResult;
        _alternaButton();
        if (result == 'Skol')
       //Navigator.pushNamed(context, '/demonstrativo');
        if(result == 'Brahma')
       //Navigator.pushNamed(context, '/demonstrativo2');
        if(result == 'Colorado')
       Navigator.pushNamed(context, '/demonstrativo3');
        _products.add(result);
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission denied";
        });
      } else {
        setState(() {
          result = "Unkown error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    }catch(e){
      setState(() {
          result = "Unkown error $e";
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButton: FloatingActionButton.extended(
     //   onPressed: _scanQR,
    //    label: Text("Scannear QR Code"),
    //    icon: Icon(Icons.camera_alt),
    //  ),
      backgroundColor: Colors.blueGrey,
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        
        child: Column(
          
          
        children:[
          
          Text('\n Carrinho de Compras',
          style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  fontFamily: 'Roboto')),
                  
              Expanded(child: Products(_products),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                child: Text(' Adicionar Produto'),
     
                onPressed:_scanQR),
                RaisedButton(
                color: Colors.blue,
                child: Text(' Finalizar Compra '),
                
                onPressed:_isButtonDisabled ? null : () { _showAlert(context); }),
                 
               ],
                ),
              ],),
        ), 
    );
  }
  
  _alternaButton() {
      setState(() => _isButtonDisabled = !_isButtonDisabled);
   }
  
}


  void _showAlert(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Desejar Encerrar sua Compra?"),
            content: Text("\nO total da sua compra foi de RS 38,20"),
             actions: <Widget>[
          FlatButton(
            child: Text('Continuar Comprando'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),FlatButton(
            child: Text('Pagar'),
            onPressed: () {
              _showAlert2(context);
            },
          ),
        ],
          )
      );
    }

 void _showAlert2(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Compra Efetuada Com Sucesso"),
            content: Text("Deseja Continuar Comprando?"),
             actions: <Widget>[
          FlatButton(
            child: Text('Continuar Comprando'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),FlatButton(
            child: Text('Sair da Loja'),
            onPressed: () {
              Navigator.pushNamed(context, '/sairloja');
            },
          ),
        ],
          )
      );
    }
