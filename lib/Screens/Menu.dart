import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/communs/AppBar.dart';
import 'package:qosystem/globals/communs/MenuWidget.dart';
import 'package:qosystem/globals/communs/NavigationBar.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  void onItemTapped(int index) {
    setState(() {
      variaveis.selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List listaCategorias = [
      {"categoria": "Lanches", "imagem": "https://picsum.photos/1200/1200"},
      {"categoria": "Doces", "imagem": "https://picsum.photos/1200/1100"},
      {"categoria": "Bebidas", "imagem": "https://picsum.photos/1200/1000"},
      {"categoria": "Cachaças", "imagem": "https://picsum.photos/1200/900"}
    ];

    return Scaffold(
        appBar: comumAppBar("Lanches"),
        body: Container(
          width: Get.width,
          height: Get.height,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.0359),
              child: Container(
                height: Get.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MenuWidget("teste", "https://picsum.photos/1200/1200")
                    ],
                  ),
                ),
              )),
        ),
        floatingActionButton: Container(
          height: Get.width * 0.194,
          width: Get.width * 0.194,
          child: FloatingActionButton(
              child: Icon(
                Icons.check,
                size: Get.width * 0.12,
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
        bottomNavigationBar: navigationBar(onItemTapped));
  }
}
