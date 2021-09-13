import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    print("Build chamado");

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/floresta.jpg'),
            Text(
              "Clique no botão para gerar uma frase inspiradora!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.blueGrey,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green[300],
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Gerar Frase',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
