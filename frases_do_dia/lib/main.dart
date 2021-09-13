import 'package:flutter/material.dart';
import 'dart:math';

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
  var _frases = [
    'Não se esqueça: você é a razão do sorriso de muitas pessoas 😊✨',
    'Descubra-se. Há tantas coisas que não sabe sobre você.',
    'Seja gentil com a sua mente e o seu coração ❤️',
    'Valorize as coisas simples que estão perto de você.',
    'Sorria. Com os dentes. Com os lábios. Com a alma.',
    'A felicidade é algo que começa lá dentro da alma.'
  ];

  var _fraseGerada = 'Clique no botão abaixo para gerar uma nova frase';

  void gerarFrase() {
    var numeroSorteado = new Random().nextInt(_frases.length);
    _fraseGerada = _frases[numeroSorteado];
  }

  var _imagens = [
    'floresta.jpg',
    'montanha.jpg',
    'por-do-sol.jpg',
    'sol-montanha.jpg'
  ];
  var _imagemGerada = 'floresta.jpg';

  void gerarImagem() {
    var numeroSorteado = new Random().nextInt(_imagens.length);
    _imagemGerada = _imagens[numeroSorteado];
  }

  @override
  Widget build(BuildContext context) {
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
            Image.asset('images/$_imagemGerada'),
            Text(
              _fraseGerada,
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
                  elevation: 8,
                  shadowColor: Colors.green),
              child: Text(
                'Gerar Frase',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                setState(() {
                  gerarFrase();
                  gerarImagem();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
