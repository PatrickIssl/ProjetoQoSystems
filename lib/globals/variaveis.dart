
import 'package:flutter/material.dart';
import 'package:qosystem/entity/Conta.dart';
import 'package:qosystem/entity/LoginEntity.dart';


String url =  "http://153.92.214.178:5090/";

//login entity
LoginEntity login = new LoginEntity();

Conta conta = new Conta(null, null, null, null,null,null,null,null,null,null,null,null,null,null);

//
var headerComum = {'Accept': 'application/json; charset=UTF-8'};


//tela mfa

var enviadoEmail = "Verifique seu E-mail e informe o código de verificação enviado:";

//login

var bemVindo = "Bem-vindo ao QO SYSTEM, faça seu login para iniciar suas vendas.";

//recuperar senha

var recuperarSenha = "Digite o seu E-mail para recuperação de senha";

//versão
var version = "Version 1.0.0 powered by QO SYSTEMS";

//splashScreen
var titulo = "QO";
var subtitulo = "SYSTEMS";
var colorTitulo = [
preto,
cinza,
branco,
branco
];

//cores
var laranjaClaro = Colors.orange;
var white = Colors.white;
var verde = Colors.green;
var laranja = Color(0xB9FF9900);
var vermelho = Color(0xFFF01C00);
var laranjaMuitoForte = Color(0xB9FF2E00);
var branco = Colors.white;
var preto = Colors.black;
var cinza = Color(0xFF928F8F);
var pretoClaro = Colors.black38;

int selectedPage = 0;