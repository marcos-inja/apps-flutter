import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage('images/padrao.png');
  var _resultado = 'Resultado!';
  var _placarUsuario = 0;
  var _placarApp = 0;
  var _cor = Colors.black;

  _regraJogo(usuario, app) {
    if (usuario == app) {
      setState(() {
        this._resultado = 'Empate!';
        this._cor = Colors.blue;
      });
    }
    // Usuario ganha caso for isso:
    if ((usuario == 'pedra' && app == 'tesoura') ||
        (usuario == 'papel' && app == 'pedra') ||
        (usuario == 'tesoura' && app == 'papel')) {
      setState(() {
        this._resultado = 'Você ganhou!';
        this._placarUsuario++;
        this._cor = Colors.green;
      });
      // Usuario perde caso for isso:
    } else if ((usuario == 'tesoura' && app == 'pedra') ||
        (usuario == 'pedra' && app == 'papel') ||
        (usuario == 'papel' && app == 'tesoura')) {
      setState(() {
        this._resultado = 'Você perdeu!';
        this._placarApp++;
        this._cor = Colors.red;
      });
    }
  }

  void _opcaoSelecionada(String escolha) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print(escolhaApp);
    setState(() {
      this._imagemApp = AssetImage('images/${escolhaApp}.png');
    });
    _regraJogo(escolha, escolhaApp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedra, papel, tesoura'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Pontos máquina: ${_placarApp}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'Pontos usúario: ${_placarUsuario}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Escolha do app:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: _cor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset(
                  "images/pedra.png",
                  height: 95,
                ),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset(
                  "images/papel.png",
                  height: 95,
                ),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset(
                  "images/tesoura.png",
                  height: 95,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 5,
                  shadowColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 25)),
              child: Text(
                'Reiniciar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  _imagemApp = AssetImage('images/padrao.png');
                  _resultado = 'Resultado!';
                  _placarUsuario = 0;
                  _placarApp = 0;
                  _cor = Colors.black;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
