import 'package:flutter/material.dart';
import 'package:qosystem/entity/Conta.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;
import 'package:http/http.dart' as http;

enviarCodigo(context, Conta conta) async {
  http.Response response = await http.get(
      "${variaveis.url}mfa/buscar/${conta.mfa}/${conta.idconta}",
      headers: variaveis.headerComum);

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: <Widget>[
          Icon(
            Icons.assignment_late_outlined,
            color: variaveis.branco,
            size: 24.0,
          ),
          Text("Código enviado, Verifique seu E-mail")
        ],
      ),
      backgroundColor: variaveis.verde,
    ));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: <Widget>[
          Icon(
            Icons.assignment_late_outlined,
            color: variaveis.branco,
            size: 24.0,
          ),
          Text(
              "Erro ao enviar mensagem, Entrar em contato com um administrador do sistema")
        ],
      ),
      backgroundColor: variaveis.vermelho,
    ));
  }
}
