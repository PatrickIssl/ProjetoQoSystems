import 'package:flutter/material.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;


class DrawerComun extends StatefulWidget {
  @override
  _DrawerComunState createState() => _DrawerComunState();
}

class _DrawerComunState extends State<DrawerComun> {
  void _voltarTelaLogin() async {
    Navigator.pushReplacementNamed(
      context, '/login'
    );
  }

  _deslogar() async {
    _voltarTelaLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  child: Text(
                    '${variaveis.login.login[0].toUpperCase()}',
                    style: TextStyle(fontSize: 50),
                  ),
                  minRadius: 50,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Usuário: ${variaveis.login.login}")
              ],
            ),
          ),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              subtitle: Text("Encerrar Sessão"),
              trailing: Icon(Icons.arrow_forward),
              onTap: _deslogar)
        ],
      ),
    );
  }
}
