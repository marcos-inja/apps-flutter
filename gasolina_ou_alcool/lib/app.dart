import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou álcool'),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logoo.png'),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite o preço da gasolina",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onSubmitted: (String texto) {
                print(texto);
              },
              controller: _textEditingController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite o preço do álcool",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onSubmitted: (String texto) {
                print(texto);
              },
              controller: _textEditingController,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(800, 30), //Só para ocupar tudo msm kkk
                  textStyle:
                      TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                child: Text(
                  "Salvar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(_textEditingController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
