import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController _controllerGasolina = TextEditingController();
  TextEditingController _controllerAlcool = TextEditingController();
  var _resultado = '';

  void _calculoMelhor() {
    var precoGasolina = double.tryParse(_controllerGasolina.text);
    var precoAlcool = double.tryParse(_controllerAlcool.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _resultado = 'Numeros invalidos!';
      });
    } else {
      if (precoGasolina == precoAlcool) {
        setState(() {
          _resultado = 'Qualquer um dos dois';
        });
      } else if (precoGasolina > precoAlcool) {
        setState(() {
          _resultado = 'Alcool está melhor';
        });
      } else {
        setState(() {
          _resultado = 'Gasolina está melhor';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou álcool'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/logoo.png'),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecer.",
                  style: TextStyle(fontSize: 30, color: Colors.blue[900]),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite o preço da gasolina",
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                controller: _controllerGasolina,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite o preço do álcool",
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                controller: _controllerAlcool,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _calculoMelhor();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _resultado,
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
