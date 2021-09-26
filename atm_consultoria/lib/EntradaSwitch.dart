import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _notificacoes = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Utilizando switch"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Configurações de notificações",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text("Deseja receber notificações?"),
              value: _notificacoes,
              onChanged: (bool valor) {
                setState(() {
                  _notificacoes = valor;
                });
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                print(_notificacoes);
              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
