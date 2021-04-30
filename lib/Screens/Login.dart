import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _version = "Version 1.0.0 powered by QO SYSTEMS";
  var _bemVindo = "Bem-vindo ao QO SYSTEM, faça seu login para iniciar suas vendas.";
  TextEditingController _controllerLogin = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

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
              Padding(padding: EdgeInsets.only(top: 50),
                  child: Text("Logo",
                  style: TextStyle(
                      fontSize: 50,
                  ),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 125),
                child:    Text(_bemVindo),
              ),
              Padding(padding: EdgeInsets.only(top: 25),
                  child:Theme(
                    data: Theme.of(context).copyWith(accentColor: Colors.red),
                    child:TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Login",
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
              Padding(padding: EdgeInsets.only(top: 20),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.red),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.orange,
                        decorationColor: Colors.orange,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    controller: _controllerSenha,
                ),
              ),
             ),
              Padding(padding: EdgeInsets.only(top: 10),
                child:Row(
                  children: <Widget>[
                    Text("Esqueceu sua senha?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child: Image.asset("assets/imagens/flecha.png",
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:Text(_version)
              ),
            ],
          ),
        ),

      ),
    );
  }
}
