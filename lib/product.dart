import 'package:flutter/material.dart';
import 'package:flutter_app/models/transaction.dart';


class Product extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Product',
      home: ProductPage(),

    );
  }
  

}

class ProductPage extends StatelessWidget{
  final List<Transaction> transaction = [
    Transaction(
    product_name: "P672",
    custome_name: "Nguyen Thanh Ha",
    price: 3.0,
    amount: 30,
    date: DateTime.now()),
    Transaction(
    product_name: "P672",
    custome_name: "Nguyen Thanh Ha",
    price: 3.0,
    amount: 30,
    date: DateTime.now())
    
  
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var text = Text('hellp');
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: Column(children: <Widget>[
        Container(
          
          color: Colors.blue,
          child: Card(
            child: Text("Danh sach san pham"),
            elevation: 5,
          )
        
        
        ),

       
        
           

          

      ],),
    );
  }}