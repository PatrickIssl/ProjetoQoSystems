import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "QO SYSTEMS",
          style: TextStyle(
              color: variaveis.branco, fontFamily: 'Saira', fontSize: 25),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    variaveis.laranja,
                    variaveis.laranja,
                    variaveis.laranjaMuitoForte
                  ])
          ),
        ),

        backgroundColor: Color(0xFFFF2E00),
      ),
      body: Container(),
      drawer: DrawerComun(),
      bottomNavigationBar: navigationBar(onItemTapped)
    );
  }
}


