import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/communs/AppBar.dart';
import 'package:qosystem/globals/communs/Category.dart';
import 'package:qosystem/globals/communs/Drawer.dart';
import 'package:qosystem/globals/communs/NavigationBar.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onItemTapped(int index) {
    setState(() {
      variaveis.selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List listaCategorias =[ {"categoria":"Lanches", "imagem": "https://picsum.photos/1200/1200"},{"categoria":"Doces", "imagem": "https://picsum.photos/1200/1100"},{"categoria":"Bebidas", "imagem": "https://picsum.photos/1200/1000"},{"categoria":"Cachaças", "imagem": "https://picsum.photos/1200/900"}];

    return Scaffold(
        appBar: comumAppBar("QO SYSTEMS"),
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05, vertical: Get.height * 0.0359),
            child: Column(
              children: <Widget>[
                Form(
                    child: TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Informe uma conta válida";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: variaveis.preto,
                    ),
                    labelText: "Buscar Categoria",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: variaveis.preto),
                    ),
                    labelStyle: TextStyle(
                      color: variaveis.preto,
                      decorationColor: variaveis.branco,
                    ),
                    fillColor: variaveis.branco,
                    filled: true,
                  ),
                  cursorColor: variaveis.preto,
                  style: TextStyle(
                    fontSize: 15,
                    color: variaveis.preto,
                    decorationColor: variaveis.preto,
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.0421875, bottom: Get.height * 0.0140625),
                  child: Row(children: [Text("Categorias", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))],),
                ),
                Container(
                  height: Get.height * 0.55,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CategoryWidget(listaCategorias[0]["categoria"], listaCategorias[0]["imagem"]),
                        CategoryWidget(listaCategorias[1]["categoria"], listaCategorias[1]["imagem"]),
                        CategoryWidget(listaCategorias[2]["categoria"], listaCategorias[2]["imagem"]),
                        CategoryWidget(listaCategorias[3]["categoria"], listaCategorias[3]["imagem"])
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: DrawerComun(),
        bottomNavigationBar: navigationBar(onItemTapped));
  }
}
