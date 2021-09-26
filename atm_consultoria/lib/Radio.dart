import 'package:flutter/material.dart';

class RadioText extends StatefulWidget {
  const RadioText({Key? key}) : super(key: key);

  @override
  _RadioTextState createState() => _RadioTextState();
}

class _RadioTextState extends State<RadioText> {
  var _escolhaUsuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Utilizando Radio button"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Escolha seu sexo:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text("Masculino"),
                Radio(
                  value: "m",
                  groupValue: _escolhaUsuario,
                  onChanged: (var escolha) {
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("Feminino"),
                Radio(
                  value: "f",
                  groupValue: _escolhaUsuario,
                  onChanged: (var escolha) {
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  },
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                print(_escolhaUsuario);
              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
