import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/transaction.dart';

import '../product.dart';



class  CustomerOrder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Order',
      theme: new ThemeData(

        primarySwatch: Colors.green,
      ),
      home: OrderPage(title: "Full up the the storage"),
            // home: OrderPage(title: "Full up"),

    );
  }


}
class OrderPage extends StatefulWidget{

  final Function addTx;

  // OrderPage(this.addTx);

  final String title;
  OrderPage({Key key,this.title,this.addTx}):super(key:key);

  @override
  OrderPageState createState() => new OrderPageState();

  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return OrderPage;
  // }
  
}

class OrderPageState extends State<OrderPage>{

  final List<Transaction> _userTransactions = [];

      final _customerController = TextEditingController();

      final _phoneController = TextEditingController();
      final _productController = TextEditingController();
      final _priceController = TextEditingController();
      final _amountController = TextEditingController();

      _pushOrderInfor(){

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductTransaction()),
            );          
      }

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

       appBar: new AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            // title: new Text(widget.title),
            actions: <Widget>[
              new IconButton(icon: const Icon(Icons.save), onPressed: () {})
            ],
          ),
          body: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
              new ListTile(
                leading: const Icon(Icons.person),
                title: new TextField(
                  controller: _customerController,
                  decoration: new InputDecoration(
                    hintText: "Name",
                    
                  ),
                
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.phone),
                title: new TextField(
                  controller: _phoneController,
                  decoration: new InputDecoration(
                    hintText: "phone",
                  ),
                ),
              ),
               new ListTile(
                  leading: const Icon(Icons.insert_emoticon),

                title: new TextField(
                  controller: _productController,

                  decoration: new InputDecoration(
                    
                    hintText: "product",
                  ),
                ),
              ),
    
              new ListTile(
                leading: const Icon(Icons.attach_money),
                title: new TextField(
                  controller: _priceController,
                  decoration: new InputDecoration(
                    hintText: "price",
                  ),
                ),
              ),
              new ListTile(
                  leading: const Icon(Icons.local_taxi),

                title: new TextField(
                  controller: _amountController,

                  decoration: new InputDecoration(
                    hintText: "amount",
                  ),
                ),
              ),

              new Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Text("Total",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                      
                    ),),
                    new Text("50 VND",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,

                    
                    ),
                    )
                  ],

              ),
              
            Container(child: ButtonTheme(
                  minWidth: 20.0 ,
                  height: 50.0,
                  buttonColor:Colors.red,
                  
                  child: RaisedButton(
                    onPressed: (){

                      // print(_phoneController);

                      // _submitData();
                      // log(phoneController);
                          // print("First text field: $phoneController");
                          // print("First text field: $_amountController");
                      //    Scaffold.of(context)
                      // .showSnackBar(SnackBar(content: Text('Processing Data')));

                        _pushOrderInfor();
                    },
                    child: Text("ADD PRODUCT"),
                    textColor: Colors.white
                  ),
                ),
                ),
              
                
        
        ],
      ),

    );
  }


}