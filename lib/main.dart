import 'package:flutter/material.dart';
import 'package:qosystem/Screens/Login.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/Screens/TelaMfa.dart';
import 'package:qosystem/globals/variaveis.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'QoSystem',
    theme: ThemeData(
      primarySwatch: laranjaClaro,
    ),
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/recuperar': (context) => RecuperaSenha(),
      '/mfa': (context) => TelaMfa(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
