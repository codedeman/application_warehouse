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
    );
  }


}
class OrderPage extends StatefulWidget{

  final String title;
  OrderPage({Key key,this.title}):super(key:key);

  @override
  OrderPageState createState() => new OrderPageState();

  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return OrderPage;
  // }
  
}

class OrderPageState extends State<OrderPage>{

  final List<Transaction> _userTransactions = [];

      final customer = TextEditingController();

      final phone = TextEditingController();
      final product = TextEditingController();
      final price = TextEditingController();
      final amount = TextEditingController();

      _pushOrderInfor(){

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Product()),
            );          
      }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

       appBar: new AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: new Text(widget.title),
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
                  controller: customer,
                  decoration: new InputDecoration(
                    hintText: "Name",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.phone),
                title: new TextField(
                  controller: phone,
                  decoration: new InputDecoration(
                    hintText: "Phone",
                  ),
                ),
              ),
               new ListTile(
                  leading: const Icon(Icons.insert_emoticon),

                title: new TextField(
                  controller: product,

                  decoration: new InputDecoration(
                    
                    hintText: "Product",
                  ),
                ),
              ),
    
              new ListTile(
                leading: const Icon(Icons.attach_money),
                title: new TextField(
                  controller: price,
                  decoration: new InputDecoration(
                    hintText: "Price",
                  ),
                ),
              ),
              new ListTile(
                  leading: const Icon(Icons.local_taxi),

                title: new TextField(
                  controller: amount,

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
                      _pushOrderInfor()
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