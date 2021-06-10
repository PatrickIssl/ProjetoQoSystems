
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/Screens/TelaMfa.dart';
import 'package:qosystem/variaveis/globals.dart' as globals;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerLogin = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _showPassword = false;

  _realizarLogin() async{

    if(_controllerSenha.text != "" && _controllerSenha.text != ""){

      globals.login.email = _controllerLogin.text;
      globals.login.password = _controllerSenha.text;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaMfa()),
      );

    }else{
      print("E-mail ou senha está vazio");
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
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 20),
                  child: Image.asset("assets/imagens/logo.png")
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:    Text(globals.bemVindo),
              ),
              Padding(padding: EdgeInsets.only(top: 25),
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

              Padding(padding: EdgeInsets.only(top: 20),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: globals.vermelho),
                  child: TextField(
                    obscureText: _showPassword == false? true :false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: globals.preto),
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPassword == false? Icons.visibility_off: Icons.visibility, color: globals.preto,),
                        onTap: (){
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      labelStyle: TextStyle(
                        color: globals.laranjaClaro,
                        decorationColor: globals.laranjaClaro,
                      ),
                      fillColor: globals.branco,
                      filled: true,
                    ),
                    cursorColor: globals.preto,
                    style: TextStyle(
                      fontSize: 15,
                      color: globals.preto,
                    ),
                    controller: _controllerSenha,
                ),
              ),
             ),

              Padding(padding: EdgeInsets.only(top: 10),
                child:Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RecuperaSenha()),
                        );
                      },
                      child:Text("Esqueceu sua senha?",
                        style: TextStyle(
                          color: globals.preto,
                        ),
                      ),
                    ),
                  ],
                )
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                  child: GestureDetector(
                      onTap: _realizarLogin,
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
