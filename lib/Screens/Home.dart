import 'package:flutter/material.dart';
import 'package:qosystem/globals/communs/Drawer.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF2E00),
        title: Center(
            child: Text(
          "QO SYSTEMS",
          style: TextStyle(
              color: variaveis.branco, fontFamily: 'Saira', fontSize: 25),
        )),
      ),
      body: Container(
          padding: EdgeInsets.all(55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(13.0),
                          topRight: const Radius.circular(13.0),
                          bottomLeft: const Radius.circular(13.0),
                          bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.menu_book),
                          Text("Cardápio")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(13.0),
                          topRight: const Radius.circular(13.0),
                          bottomLeft: const Radius.circular(13.0),
                          bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.post_add),
                          Text("Pedidos")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 65),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(13.0),
                          topRight: const Radius.circular(13.0),
                          bottomLeft: const Radius.circular(13.0),
                          bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.menu_book),
                          Text("Cardápio")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(13.0),
                          topRight: const Radius.circular(13.0),
                          bottomLeft: const Radius.circular(13.0),
                          bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.post_add),
                          Text("Pedidos")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 65),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(13.0),
                        topRight: const Radius.circular(13.0),
                        bottomLeft: const Radius.circular(13.0),
                        bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.menu_book),
                          Text("Cardápio")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(13.0),
                          topRight: const Radius.circular(13.0),
                          bottomLeft: const Radius.circular(13.0),
                          bottomRight: const Radius.circular(13.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          variaveis.laranja,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.post_add),
                          Text("Pedidos")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
      drawer: DrawerComun(),
    );
  }
}
