import 'package:flutter/material.dart';
// import 'dart:math';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou alcool'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite algo",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            
          )
        ],
      ),
    );
  }
}
