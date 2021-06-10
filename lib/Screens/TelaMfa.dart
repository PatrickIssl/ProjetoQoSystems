import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/variaveis/globals.dart' as globals;

class TelaMfa extends StatefulWidget {
  @override
  _TelaMfaState createState() => _TelaMfaState();
}

class _TelaMfaState extends State<TelaMfa> {
  bool _showPassword = false;

  TextEditingController umController = new TextEditingController();
  TextEditingController doisController = new TextEditingController();
  TextEditingController tresController = new TextEditingController();
  TextEditingController quatroController = new TextEditingController();
  TextEditingController cincoController = new TextEditingController();

  _realizarLogin() async {
    globals.auth
        .signInWithEmailAndPassword(
            email: globals.login.email, password: globals.login.password)
        .then((firebaseUser) {
      print("Usuario logado com sucesso Email: " + firebaseUser.email);
    }).catchError((erro) {
      print(" erro ao logar : " + erro.toString());
    });
  }

  final _formKey = GlobalKey<FormState>();

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
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset("assets/imagens/logo.png")),
              Padding(
                padding: EdgeInsets.only(top: 75),
                child: Text(globals.enviadoEmail),
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Favor inserir um número válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(9.0),
                                  ),
                                ),
                                hintText: '*',
                                hintStyle:
                                TextStyle(color: globals.laranja, fontSize: 15),
                                fillColor: globals.branco,
                                filled: true,
                              ),
                              controller: umController,
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Favor inserir um número válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(9.0),
                                  ),
                                ),
                                hintText: '*',
                                hintStyle:
                                TextStyle(color: globals.laranja, fontSize: 15),
                                fillColor: globals.branco,
                                filled: true,
                              ),
                              controller: doisController,
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Favor inserir um número válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(9.0),
                                  ),
                                ),
                                hintText: '*',
                                hintStyle:
                                TextStyle(color: globals.laranja, fontSize: 15),
                                fillColor: globals.branco,
                                filled: true,
                              ),
                              controller: tresController,
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Favor inserir um número válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(9.0),
                                  ),
                                ),
                                hintText: '*',
                                hintStyle:
                                TextStyle(color: globals.laranja, fontSize: 15),
                                fillColor: globals.branco,
                                filled: true,
                              ),
                              controller: quatroController,
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Favor inserir um número válido';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(9.0),
                                  ),
                                ),
                                hintText: '*',
                                hintStyle:
                                TextStyle(color: globals.laranja, fontSize: 15),
                                fillColor: globals.branco,
                                filled: true,
                              ),
                              controller: cincoController,
                            ),
                          )
                      ),



                    ],
                  )),

              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecuperaSenha()),
                          );
                        },
                        child: Text(
                          "Enviar o código novamente",
                          style: TextStyle(
                            color: globals.preto,
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: GestureDetector(
                    onTap: _realizarLogin,
                    child: Image.asset("assets/imagens/flecha.png"),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: Text(globals.version)),
            ],
          ),
        ),
      ),
    );
  }
}
