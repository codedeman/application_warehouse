import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
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

      children: <Widget>[

        new ListTile(
            leading: const Icon(Icons.email),
            title: TextField(
                decoration: new InputDecoration(hintText: "User name")
            ,),


        ),

        new ListTile(
            leading: const Icon(Icons.email),
            title: TextField(
                decoration: new InputDecoration(hintText: "Pass Word")
            ,),


        ),
      ],
    ),
    
    );
  }


}