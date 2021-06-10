library my_prj.globals;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qosystem/Entity/LoginEntity.dart';

//login entity
LoginEntity login = new LoginEntity();


//metodo auth da autenticação do usuário
FirebaseAuth auth = FirebaseAuth.instance;


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
var laranja = Color(0xB9FF9900);
var vermelho = Color(0xFFF01C00);
var branco = Colors.white;
var preto = Colors.black;
var cinza = Color(0xFF928F8F);
var pretoClaro = Colors.black38;

