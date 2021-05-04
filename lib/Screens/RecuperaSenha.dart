import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/variaveis/globals.dart' as globals;

class RecuperaSenha extends StatefulWidget {
  @override
  _RecuperaSenhaState createState() => _RecuperaSenhaState();
}

class _RecuperaSenhaState extends State<RecuperaSenha> {


  TextEditingController _controllerLogin = TextEditingController();

  _enviarEmail() async{

    if(_controllerLogin != ""){
      globals.auth.sendPasswordResetEmail(email: _controllerLogin.text).catchError((erro){
        print(" erro ao logar : "+ erro.toString());
      });

    }else{
      print("E-mail está vazio");
    }
    Navigator.pop(context);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xB9FF9900),
              Color(0xFFF01C00),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 80),
                  child: Image.asset("assets/imagens/logo.png")
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:    Text(globals.recuperarSenha),
              ),
              Padding(padding: EdgeInsets.only(top: 50),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.red),
                  child:TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.orange,
                        decorationColor: Colors.white,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decorationColor: Colors.orange,
                    ),
                    controller: _controllerLogin,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                  child: GestureDetector(
                    onTap: _enviarEmail,
                    child:Image.asset("assets/imagens/flecha.png"),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                  child:Text(globals.version)
              ),
            ],
          ),
        ),

      ),
    );
  }
}
