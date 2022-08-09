
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

class RecuperaSenha extends StatefulWidget {
  @override
  _RecuperaSenhaState createState() => _RecuperaSenhaState();
}

class _RecuperaSenhaState extends State<RecuperaSenha> {


  TextEditingController _controllerLogin = TextEditingController();

  _enviarEmail() async{
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 80),
                  child: Image.asset("assets/imagens/logo.png")
              ),
              Padding(padding: EdgeInsets.only(top: 75),
                child:    Text(variaveis.recuperarSenha),
              ),
              Padding(padding: EdgeInsets.only(top: 50),
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
              Padding(padding: EdgeInsets.only(top: 75),
                  child: GestureDetector(
                    onTap: _enviarEmail,
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
