import 'package:aplicacaoambevleve/pages/Demonstrativo.dart';
import 'package:aplicacaoambevleve/pages/Demonstrativo2.dart';
import 'package:aplicacaoambevleve/pages/Demonstrativo3.dart';
import 'package:aplicacaoambevleve/pages/EntrarLoja.dart';
import 'package:aplicacaoambevleve/pages/QRCodeSaida.dart';
import 'package:aplicacaoambevleve/pages/QrCodeEntrada.dart';
import 'package:aplicacaoambevleve/pages/bemvindo.dart';
import 'package:aplicacaoambevleve/pages/cartaocredito.dart';
import 'package:aplicacaoambevleve/pages/flutter_login.dart';
import 'package:aplicacaoambevleve/pages/carrinho.dart';
import 'package:aplicacaoambevleve/pages/qrcode.dart';
import 'package:aplicacaoambevleve/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';


final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Teste',
    routes: <String, WidgetBuilder>{
        '/demonstrativo' : (BuildContext context) => new Demonstrativo(),
        '/demonstrativo2' : (BuildContext context) => new Demonstrativo2(),
        '/demonstrativo3' : (BuildContext context) => new Demonstrativo3(),
        '/bemvindo' : (BuildContext context) => new BemVindo(),
        '/qrcodescan' : (BuildContext context) => new QrCodeScan(text: null),
        '/sairloja' : (BuildContext context) => new QRCodeSaida(),
        '/entrarloja' : (BuildContext context) => new QRCodeEntrada(),
        
    },
 
      theme: ThemeData(
        
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String _validateLogin(String text){
      if(text.isEmpty){
        return "Informe o login";
      }
      return null;
  }
  String _validateSenha(String text){
      if(text.isEmpty){
        return "Informe a senha";
      }
      return null;
  }  

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
      //),
      body: Container(
        
        child: 
        Column(
          
          children: <Widget>[ 
          Container(
            
            child: Column(
              children: <Widget>[
                Align(
            child:  
             Text('\n \n Efetue Login para acessar a Loja\n \n',
             style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'Roboto')), 
            ),
            Image.asset('assets/flutter-icon.png',
            width: 200,
            height: 200,),
        
              ],
              
            ),
          
          ),
          

          textFormFieldLogin(),
           textFormFieldSenha(),
           
             Column(
               children: <Widget>[
                 RaisedButton(
                 color: Colors.blue,
                 child: Text("Entrar", 
                 style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  onPressed: () { 
                    Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => NavDrawer()),
            ); },
                  ),
               ],
             ),
          ],
           ),
        
           //
      ),
    );
    
  }

textFormFieldLogin() {
     return TextFormField(
        controller: _tLogin,
           validator: _validateLogin,
           keyboardType: TextInputType.text,
           style: TextStyle(color: Colors.black),
           decoration: InputDecoration( 
             labelText: "Email",
             labelStyle: TextStyle(fontSize:20.0, color: Colors.black),
             hintText: "Informe o email"
            )
         );
   }

textFormFieldSenha() {
     return TextFormField( 
         controller: _tSenha,
            validator: _validateSenha,
           obscureText: true,
           keyboardType: TextInputType.text,
           style: TextStyle(color: Colors.black),
            decoration: InputDecoration( 
             labelText: "Senha",
             labelStyle: TextStyle(fontSize:20.0, color: Colors.black),
             hintText: "Informe a senha"
            )
         );
   }



}
