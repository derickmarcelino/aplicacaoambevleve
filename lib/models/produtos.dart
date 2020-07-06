import 'package:flutter/material.dart';
import 'package:aplicacaoambevleve/models/produto.dart';

class Products extends StatelessWidget {
  final List<String> produtos;
  Products(this.produtos);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/skol-pilsen.png'),
          Text(produtos[index].toString(), style: TextStyle(color: Colors.deepPurple)),
          Text('Produto: Skol Latinha 269ml'),
          Text('Categoria : Pilsen'),
          Text('Preco:  RS 2,50'),
          Text('Quantidade: 1'),


        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: produtos.length,
    );
  }
}