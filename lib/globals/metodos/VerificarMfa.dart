import 'package:flutter/material.dart';
import 'package:qosystem/entity/Conta.dart';
import 'package:qosystem/globals/variaveis.dart';

verificarMfa(context, String mfa, Conta conta) {
  if (conta.mfa.toUpperCase() == mfa.toUpperCase()) {
    Navigator.pushReplacementNamed(context, '/home');
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: <Widget>[
          Icon(
            Icons.assignment_late_outlined,
            color: branco,
            size: 24.0,
          ),
          Text(
              "Código de verificação Incorreto")
        ],
      ),
      backgroundColor: vermelho,
    ));
  }
}
