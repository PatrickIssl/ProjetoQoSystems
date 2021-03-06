import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.menu_book, size: 50,),
                          SizedBox(height: 2,),
                          Text("Card??pio")
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.post_add, size: 50,),
                          SizedBox(height: 2),
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,

                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.list_alt ,size: 50,),
                          SizedBox(height: 2),
                          Text("Comandas")
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.person_add_alt_1_outlined, size: 50,),
                          SizedBox(height: 2),
                          Text("Funcion??rios")
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.money, size: 50,),
                          SizedBox(height: 2),
                          Text("Pagamento")
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          variaveis.laranjaClaro,
                          variaveis.vermelho,
                        ],
                      ),
                    ),
                    height: 85,
                    width: 85,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.format_list_bulleted, size: 50,),
                          SizedBox(height: 2),
                          Text("Concluidos")
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
