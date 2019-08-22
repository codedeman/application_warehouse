import 'package:flutter/material.dart';
import 'package:flutter_app/transaction.dart';
import 'package:flutter_app/login.dart';

// Future main() async {
//   runApp(LoginPage());
// }

void main() => runApp(new LoginTransaction());



// import 'package:flutter/material.dart';






class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Hot Reload App in IntelliJ). Notice that the counter
        // didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Full up the the storage'),
      // login: new LoginPage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  // final List<Transaction> transaction;

  MyHomePage({Key key, this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class FlutterColor extends Color {

      static int _getColorFromHex(String flutterColor) {
      flutterColor = flutterColor.toUpperCase().replaceAll("#", "");
        if (flutterColor.length == 6) {
        flutterColor = "FF" + flutterColor;
        }
        return int.parse(flutterColor, radix: 16);
        }
        FlutterColor(final String flutterColor) : super(_getColorFromHex(flutterColor));
  }

class _MyHomePageState extends State<MyHomePage> {
    final color = const Color(0xffb74093);

      final List<Transaction> _userTransactions = [];

      final customer = TextEditingController();

      final phone = TextEditingController();
      final product = TextEditingController();
      final price = TextEditingController();
      final amount = TextEditingController();

    List<Transaction> get _recentTransactions {
      return _userTransactions.where((tx) {
        return tx.date.isAfter(
          DateTime.now().subtract(
            Duration(days: 7),
          ),
        );
      }).toList();
    }

     void _addNewTransaction(
      String txtCustomer, String txtProduct, int  txtAmount , DateTime chosenDate,double txtPrice) {

    final newTx = Transaction(product_name: txtProduct,
                custome_name: txtCustomer,
                amount: txtAmount,
                price: txtPrice, 
                date: DateTime.now(),
                
                );
  

    setState(() {
      _userTransactions.add(newTx);
    });
  }





  @override
   Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          content: Text(phone.text),
          title: new Text(message),
          actions: <Widget>[
            new FlatButton(onPressed: () => Navigator.pop(context), child: new Text("OK")),

            new FlatButton(onPressed: () => Navigator.pop(context), child: new Text('Cancel')),


          ],
        )

    );
  }

  _pushToSaveCustomer(){
    final pageRouter  = new MaterialPageRoute(builder: (context){


    });

  }

  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
   
      
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
                  leading: const Icon(Icons.attach_money),

                title: new TextField(
                  controller: amount,

                  decoration: new InputDecoration(
                    hintText: "amount",
                  ),
                ),
              ),
              

              Row(children: <Widget>[

                Card(child: Row(children: <Widget>[
                  Container(child: Text(price.text),)
                ],)
                ,)
              ],),
              
              Column(children: <Widget>[
                
              ],) ,             
              ButtonTheme(
                  minWidth: 300.0,
                  height: 40.0,
                  buttonColor:Colors.red,
                  
                  child: RaisedButton(
                    onPressed: (){_showAlert(context, "Do you want to add product ");},
                    child: Text("ADD PRODUCT"),
                    textColor: Colors.white
                  ),
                ),
                
        
        ],
      ),
    );
  }

  hexToColor(fc3843) {}
}