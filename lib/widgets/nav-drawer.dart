import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: 
            Text(
              'Ambev Leve',
              style: TextStyle(color: Colors.white, fontSize: 30), 
            ),
            
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                    image: AssetImage('assets/user.png'),alignment: Alignment.bottomLeft),),
                    
          ),
          
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Entrar na Loja'),
            onTap: () => {Navigator.pushNamed(context, '/entrarloja') },
          ),
          ListTile(
            leading: Icon(Icons.local_bar),
            title: Text('Sacolas'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Lojas'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Recibos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Pagamentos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ajuda'),
            onTap: () => {Navigator.of(context).pop()},
          ),ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair da Loja'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}