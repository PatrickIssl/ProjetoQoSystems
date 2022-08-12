import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/communs/AppBar.dart';
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
    return Scaffold(
      appBar: comumAppBar("QO SYSTEMS"),
      body: Container(),
      drawer: DrawerComun(),
      bottomNavigationBar: navigationBar(onItemTapped)
    );
  }
}


