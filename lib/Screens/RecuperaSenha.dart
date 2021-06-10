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

    if(_controllerLogin.text != ""){
      globals.auth.sendPasswordResetEmail(email: _controllerLogin.text).catchError((erro){
        print(" erro ao logar : "+ erro.toString());
      });
      Navigator.pop(context);
    }else{
      print("E-mail está vazio");
    }

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
              globals.laranja,
              globals.vermelho,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 80),
                  child: Image.asset("assets/imagens/logo.png")
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:    Text(globals.recuperarSenha),
              ),
              Padding(padding: EdgeInsets.only(top: 50),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: globals.vermelho),
                  child:TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: globals.preto),
                      ),
                      labelStyle: TextStyle(
                        color: globals.laranjaClaro,
                        decorationColor: globals.branco,
                      ),
                      fillColor: globals.branco,
                      filled: true,
                    ),
                    cursorColor: globals.preto,
                    style: TextStyle(
                      fontSize: 15,
                      color: globals.preto,
                      decorationColor: globals.laranjaClaro,
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
