import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;
  bool _marcos = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo!!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool? valor) {
                  if (valor != null) {
                    setState(() {
                      _comidaBrasileira = valor;
                    });
                  }
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A melhor comida do mundo!!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaMexicana,
                onChanged: (bool? valor) {
                  if (valor != null) {
                    setState(() {
                      _comidaMexicana = valor;
                    });
                  }
                }),
            CheckboxListTile(
                title: Text("O Marcos é lindo?"),
                subtitle: Text("Se desmarcar vou chora haha!"),
                activeColor: Colors.green[300],
                tileColor: Colors.blue[50],
                //selected: true,
                secondary: Icon(
                  Icons.person_sharp,
                  size: 40,
                ),
                value: _marcos,
                onChanged: (bool? valor) {
                  if (valor != null) {
                    setState(() {
                      _marcos = valor;
                    });
                  }
                }),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                print("Comida Brasileira: " +
                    _comidaBrasileira.toString() +
                    " Comida Mexicana " +
                    _comidaMexicana.toString());
              },
              child: Text(
                "Salvar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor){
                setState(() {
                  _estaSelecionado = valor;
                });
                print("Checkbox: " + valor.toString() );
              },
            )*/
          ],
        ),
      ),
    );
  }
}
