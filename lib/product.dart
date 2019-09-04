import 'package:flutter/material.dart';
import 'package:flutter_app/models/transaction.dart';


class ProductTransaction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      
      title: 'ProductTransaction',
      home: ProductTransactionPage(),
      

    );
  }
  

}

class ProductTransactionPage extends StatelessWidget{
  final List<Transaction> transaction = [

    Transaction(
      product_name: "kakak",
      custome_name: "Ksjjd",
      price: 3.0,
      phone: "123131",
      amount: 2,
      date: DateTime.now()
    
    
    )
    // Transaction(
    // product_name: "P672",
    // custome_name: "Nguyen Thanh Ha",
    // price: 3.0,
    // amount: 30,
    // phone: "32342",
    // date: DateTime.now()),
    // Transaction(
    // product_name: "P672",
    // custome_name: "Chich xong xoc",
    // price: 300,
    // amount: 30,
    // phone: "0365763737",
    // date: DateTime.now()),

    // Transaction(
    // product_name: "276",
    // custome_name: "Best xl",
    // price: 3.0,
    // amount: 30,
    // phone: "11343",
    // date: DateTime.now())
    
  
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // var  _backbutton = Icon()
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductTransaction'),

        
        actions: <Widget>[

          Expanded(

            
            
          child: Row(children: <Widget>[

            Align(
              
              alignment: Alignment.centerLeft,
              child: Icon(Icons.backup)
              
            ,)
          ],)
          
        

          )
        ],
      
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          // Expanded(child: ,)

        Container(
          
          color: Colors.purple,
          
          child: Card(
            child: Text("Danh sach san pham"),
            elevation: 5,
          )

          
        
        
        ),
     
            Column(
            children: transaction.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tx.product_name,
                        // '\$${tx.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${tx.price}vnd',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // DateFormat.yMMMd().format(tx.date),
                          tx.custome_name,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            
                          ),
                        ),
                        Text(
                          tx.phone,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black
                            ),
                        
                        )
                      ],
                    ),

                    //  

                    

                  ],
                ),
              );
            }).toList(),
            
          ),

          

      ],),
    );
  }}