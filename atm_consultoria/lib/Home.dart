import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Atm consultoria"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_empresa.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_servico.png"),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_contato.png"),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
