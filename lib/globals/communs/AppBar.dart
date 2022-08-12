import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

import '../../Screens/Home.dart';

Widget comumAppBar(var Texto){
  return AppBar(
  centerTitle: true,
  title: Text(
  "${Texto}",
  style: TextStyle(
  color: variaveis.branco, fontFamily: 'Saira', fontSize: 25),
  ),
  flexibleSpace: Container(
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
  variaveis.laranja,
  variaveis.laranja,
  variaveis.laranjaMuitoForte
  ])
  ),
  ),

  backgroundColor: Color(0xFFFF2E00),
  );
}