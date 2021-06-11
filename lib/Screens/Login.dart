
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/Screens/TelaMfa.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

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
      variaveis.login.login = _controllerLogin.text;
      variaveis.login.password = _controllerSenha.text;
      Navigator.pushNamed(
          context, '/mfa',
          );

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
              variaveis.laranja,
              variaveis.vermelho,
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
                child:    Text(variaveis.bemVindo),
              ),
              Padding(padding: EdgeInsets.only(top: 25),
                  child:Theme(
                    data: Theme.of(context).copyWith(accentColor: variaveis.vermelho),
                    child:TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: variaveis.preto),
                        ),
                          labelStyle: TextStyle(
                              color: variaveis.laranjaClaro,
                              decorationColor: variaveis.branco,
                          ),
                          fillColor: variaveis.branco,
                          filled: true,
                      ),
                      cursorColor: variaveis.preto,
                      style: TextStyle(
                        fontSize: 15,
                        color: variaveis.preto,
                        decorationColor: variaveis.laranjaClaro,
                      ),
                      controller: _controllerLogin,
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 20),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: variaveis.vermelho),
                  child: TextField(
                    obscureText: _showPassword == false? true :false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: variaveis.preto),
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPassword == false? Icons.visibility_off: Icons.visibility, color: variaveis.preto,),
                        onTap: (){
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      labelStyle: TextStyle(
                        color: variaveis.laranjaClaro,
                        decorationColor: variaveis.laranjaClaro,
                      ),
                      fillColor: variaveis.branco,
                      filled: true,
                    ),
                    cursorColor: variaveis.preto,
                    style: TextStyle(
                      fontSize: 15,
                      color: variaveis.preto,
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
                          color: variaveis.preto,
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
                child:Text(variaveis.version)
              ),
            ],
          ),
        ),

      ),
    );
  }
}
