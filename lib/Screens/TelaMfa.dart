import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/entity/Conta.dart';
import 'package:qosystem/entity/LoginEntity.dart';
import 'package:qosystem/globals/metodos/Login.dart';
import 'package:qosystem/globals/metodos/Mfa.dart';
import 'package:qosystem/globals/metodos/VerificarMfa.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;
import 'package:http/http.dart' as http;

class TelaMfa extends StatefulWidget {
  @override
  _TelaMfaState createState() => _TelaMfaState();
}

class _TelaMfaState extends State<TelaMfa> {
  TextEditingController umController = new TextEditingController();
  TextEditingController doisController = new TextEditingController();
  TextEditingController tresController = new TextEditingController();
  TextEditingController quatroController = new TextEditingController();
  TextEditingController cincoController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var _focusNodes = List.generate(5, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Conta>(
      future: realizarLogin(context),
      // ignore: missing_return
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              print(snapshot.error);
              return Text("lista: Erro ao carregar ");
            } else {
              Conta conta = snapshot.data;

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
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Image.asset("assets/imagens/logo.png")),
                        Padding(
                          padding: EdgeInsets.only(top: 75),
                          child: Text(
                            variaveis.enviadoEmail,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 75)),
                        Form(
                            key: _formKey,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: TextFormField(
                                        autofocus: true,
                                        onChanged: (value) {
                                          _focusNodes[0].requestFocus();
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Favor inserir um número válido';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(9.0),
                                            ),
                                          ),
                                          hintText: '*',
                                          hintStyle: TextStyle(
                                              color: variaveis.laranja,
                                              fontSize: 15),
                                          fillColor: variaveis.branco,
                                          filled: true,
                                        ),
                                        controller: umController,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: TextFormField(
                                        onChanged: (value) {
                                          _focusNodes[1].requestFocus();
                                        },
                                        focusNode: _focusNodes[0],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Favor inserir um número válido';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(9.0),
                                            ),
                                          ),
                                          hintText: '*',
                                          hintStyle: TextStyle(
                                              color: variaveis.laranja,
                                              fontSize: 15),
                                          fillColor: variaveis.branco,
                                          filled: true,
                                        ),
                                        controller: doisController,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: TextFormField(
                                        onChanged: (value) {
                                          _focusNodes[2].requestFocus();
                                        },
                                        focusNode: _focusNodes[1],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Favor inserir um número válido';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(9.0),
                                            ),
                                          ),
                                          hintText: '*',
                                          hintStyle: TextStyle(
                                              color: variaveis.laranja,
                                              fontSize: 15),
                                          fillColor: variaveis.branco,
                                          filled: true,
                                        ),
                                        controller: tresController,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: TextFormField(
                                        onChanged: (value) {
                                          _focusNodes[3].requestFocus();
                                        },
                                        focusNode: _focusNodes[2],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Favor inserir um número válido';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(9.0),
                                            ),
                                          ),
                                          hintText: '*',
                                          hintStyle: TextStyle(
                                              color: variaveis.laranja,
                                              fontSize: 15),
                                          fillColor: variaveis.branco,
                                          filled: true,
                                        ),
                                        controller: quatroController,
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: TextFormField(
                                        onChanged: (value) {
                                          _focusNodes[3].unfocus();
                                        },
                                        focusNode: _focusNodes[3],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Favor inserir um número válido';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(9.0),
                                            ),
                                          ),
                                          hintText: '*',
                                          hintStyle: TextStyle(
                                              color: variaveis.laranja,
                                              fontSize: 15),
                                          fillColor: variaveis.branco,
                                          filled: true,
                                        ),
                                        controller: cincoController,
                                      ),
                                    )),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    enviarCodigo(context, conta);
                                  },
                                  child: Text(
                                    "Enviar o código novamente",
                                    style: TextStyle(
                                      color: variaveis.preto,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 75),
                            child: GestureDetector(
                              onTap: () {
                                if (_formKey.currentState.validate()) {
                                  String mfa = umController.text.toString() +
                                      doisController.text.toString() +
                                      tresController.text.toString() +
                                      quatroController.text.toString() +
                                      cincoController.text.toString();
                                  verificarMfa(context, mfa, conta);
                                }
                              },
                              child: Image.asset("assets/imagens/flecha.png"),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 75),
                            child: Text(variaveis.version)),
                      ],
                    ),
                  ),
                ),
              );
            }
            break;
        }
      },
    );
  }
}
