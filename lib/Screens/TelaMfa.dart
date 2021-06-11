
import 'package:flutter/material.dart';
import 'package:qosystem/Screens/RecuperaSenha.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

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

  _realizarLogin() async {
    // http.Response response =
    // await http.get("${url}usuario/procurar/${nome}/${senha}", headers: variaveis.headerComum);
    // if (response.statusCode == 200) {
    //   return json.decode(response.body);
    // } if (response.statusCode == 400) {
    //   return json.decode(response.body);
    // } else{
    //   Navigator.pop(context);
    // }
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
                child: Text(variaveis.enviadoEmail),
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
                                TextStyle(color: variaveis.laranja, fontSize: 15),
                                fillColor: variaveis.branco,
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
                                TextStyle(color: variaveis.laranja, fontSize: 15),
                                fillColor: variaveis.branco,
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
                                TextStyle(color: variaveis.laranja, fontSize: 15),
                                fillColor: variaveis.branco,
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
                                TextStyle(color: variaveis.laranja, fontSize: 15),
                                fillColor: variaveis.branco,
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
                                TextStyle(color: variaveis.laranja, fontSize: 15),
                                fillColor: variaveis.branco,
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
                            color: variaveis.preto,
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
                  child: Text(variaveis.version)),
            ],
          ),
        ),
      ),
    );
  }
}
