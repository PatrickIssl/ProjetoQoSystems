import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/variaveis/globals.dart' as globals;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  var _bemVindo = "Bem-vindo ao QO SYSTEM, faça seu login para iniciar suas vendas.";
  TextEditingController _controllerLogin = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _showPassword = false;
  FirebaseAuth auth = FirebaseAuth.instance;

  _realizarLogin() async{

    if(_controllerSenha != "" && _controllerSenha != ""){
      auth.signInWithEmailAndPassword(
          email: _controllerLogin.text,
          password: _controllerSenha.text
      ).then((firebaseUser){
        print("Usuario logado com sucesso Email: "+firebaseUser.email);

      }).catchError((erro){
        print(" erro ao logar : "+ erro.toString());
      });

    }else{
      print("Usuário ou senha está vazio");
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
              Padding(padding: EdgeInsets.only(top: 20),
                  child: Image.asset("assets/imagens/logo.png")
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:    Text(_bemVindo),
              ),
              Padding(padding: EdgeInsets.only(top: 25),
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

              Padding(padding: EdgeInsets.only(top: 20),
                child:Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.red),
                  child: TextField(
                    obscureText: _showPassword == false? true :false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPassword == false? Icons.visibility_off: Icons.visibility, color: Colors.black,),
                        onTap: (){
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
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
                  child: GestureDetector(
                      onTap: _realizarLogin,
                      child:Image.asset("assets/imagens/flecha.png",
                    ),
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
