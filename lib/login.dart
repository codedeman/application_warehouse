import 'package:flutter/material.dart';


class LoginTransaction extends StatelessWidget{
 @override
    Widget build(BuildContext context) {
      return new MaterialApp(

        title: 'Login',
        theme: new ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: new LoginPage(title: "Login"),
      );

      }

  
}

class LoginPage extends StatefulWidget {
 
LoginPage({Key key, this.title}):super(key:key);

  final String title;

  @override
  LoginPageState createState() => new LoginPageState();
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   return ;
  // }


}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: new AppBar(
      title:  new Text("Login Page"),
    
    ) ,
    
    body: new Column(
      crossAxisAlignment:  CrossAxisAlignment.center,
      
      children: <Widget>[
        Container(

          width: double.infinity,
          child: Card(
            
            child: Text('MC Store'),
            elevation: 5,
          
          ),
          
          
        ),
        

        new Card(
          elevation:  5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                  TextField(decoration: InputDecoration(labelText: 'User Name'),
                  
                  ),

                  TextField(decoration: InputDecoration(labelText: 'Pass Word'),
                  ),

                ButtonTheme(
                  minWidth: 300.0,
                  height: 40.0,
                  buttonColor:Colors.red,
                  child:FlatButton(
                        color: Colors.red,
                        child: Text('Login'),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                  
                   )

                 


              ],
            ),
          
          ),

        )
      ],
    ),
    
    );
  }


}