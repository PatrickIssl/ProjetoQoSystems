library my_prj.globals;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

//metodo auth da autenticação do usuário
FirebaseAuth auth = FirebaseAuth.instance;

//versão
var version = "Version 1.0.0 powered by QO SYSTEMS";

//splashScreen
var titulo = "QO";
var subtitulo = "SYSTEMS";
var colorTitulo = [
Colors.black,
Color(0xFF928F8F),
Colors.white,
Colors.white
];

//login

var bemVindo = "Bem-vindo ao QO SYSTEM, faça seu login para iniciar suas vendas.";

//recuperar senha

var recuperarSenha = "Digite o seu E-mail para recuperação de senha";