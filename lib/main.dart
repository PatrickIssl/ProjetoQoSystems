import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/Login.dart';
import 'package:qosystem/Screens/SplashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser usuarioAtual = await auth.currentUser();

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