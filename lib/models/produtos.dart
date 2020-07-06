import 'package:flutter/material.dart';
import 'package:aplicacaoambevleve/models/produto.dart';

class Products extends StatelessWidget {
  final List<String> produtos;
  Products(this.produtos);

  Widget _buildProductItem(BuildContext context, int index) {

if(index ==0){
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset('assets/skol-pilsen.png'),
          Container(
           child: Column(
         children: <Widget>[
          Text(produtos[index].toString(), style: TextStyle(color: Colors.deepPurple)),
          Text('Produto: Skol Garrafa 600ml'),
          Text('Categoria : Pilsen'),
          Text('Preco:  RS 6,30'),
          Text('Quantidade: 1'),
          Text('\nRemover Produto',style: TextStyle(color: Colors.deepPurple))
        ],),
        ),],
      ),  
    );
}
if(index ==1){
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset('assets/brahma-pilsen.png'),
          Container(
           child: Column(
         children: <Widget>[
          Text(produtos[index].toString(), style: TextStyle(color: Colors.deepPurple)),
          Text('Produto:  Brahma Garrafa 600ml'),
          Text('Categoria : Pilsen'),
          Text('Preco:  RS 5,30'),
          Text('Quantidade: 1'),
          Text('\nRemover Produto',style: TextStyle(color: Colors.deepPurple))
        ],),
        ),
        ],
      ),  
    );
}
if(index ==2){
    return Card(
      child: Row(
        children: <Widget>[
         Image.asset('assets/colorado-bertho.png'),
         Container(
           child: Column(
         children: <Widget>[
          Text(produtos[index].toString()),
          Text('Produto: Colorado Bertho 600ml'),
          Text('Categoria : Double Brown Ale'),
          Text('Preco:  RS 12,30'),
          Text('Quantidade: 1'),
          Text('\nRemover Produto',style: TextStyle(color: Colors.deepPurple))
           ],),
        ),],
      ),  
    );
}
   if(index ==3){
    return Card(
      child: Row(
        children: <Widget>[
         Image.asset('assets/Fusion-LimaoHortela.png'),
         Container(
           child: Column(
         children: <Widget>[
          Text(produtos[index].toString()),
          Text('Produto: Fusion Limao e Hortela 310ml'),
          Text('Categoria : Energeticos'),
          Text('Preco:  RS 9,00'),
          Text('Quantidade: 1'),
          Text('\nRemover Produto',style: TextStyle(color: Colors.deepPurple))
           ],),
        ),],
      ),  
    );
}
if(index ==4){
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset('assets/brahma-pilsen.png'),
          Container(
           child: Column(
         children: <Widget>[
          Text(produtos[index].toString(), style: TextStyle(color: Colors.deepPurple)),
          Text('Produto:  Brahma Garrafa 600ml'),
          Text('Categoria : Pilsen'),
          Text('Preco:  RS 5,30'),
          Text('Quantidade: 1'),
          Text('\nRemover Produto',style: TextStyle(color: Colors.deepPurple))
        ],),
        ),
        ],
      ),  
    );
}
   }
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemBuilder: _buildProductItem,
      itemCount: produtos.length,
    );
  }
}