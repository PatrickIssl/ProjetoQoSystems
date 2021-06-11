import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qosystem/entity/Conta.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;
import 'package:http/http.dart' as http;

enviarCodigo(context, Conta conta) async {
  http.Response response =
  await http.get("${variaveis.url}mfa/buscar/${conta.mfa}/${conta.id}", headers: variaveis.headerComum);
}