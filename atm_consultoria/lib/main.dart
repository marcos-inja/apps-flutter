import 'package:atm_consultoria/CampoTexto.dart';
import 'package:atm_consultoria/EntradaCheckbox.dart';
import 'package:atm_consultoria/Radio.dart';
import 'package:atm_consultoria/EntradaSwitch.dart';
import 'package:atm_consultoria/Home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      //home: CampoTexto(),
      // home: EntradaCheckbox(),
      // home: RadioText(),
      // home: EntradaSwitch(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    )
  );
}
