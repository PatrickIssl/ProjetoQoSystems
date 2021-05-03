import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/Login.dart';
import 'package:qosystem/Screens/SplashScreen.dart';
import 'variaveis/globals.dart' as globals;


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseUser usuarioAtual = await globals.auth.currentUser();

   if(usuarioAtual != null){
     print("usuario Logado: "+ usuarioAtual.email);
     runApp(MaterialApp(
       home: SplashScreen()
     ));
   }else{
     runApp(MaterialApp(
         home: Login()
     ));
   }



}