import 'package:qosystem/globals/variaveis.dart' as variaveis;
import 'package:http/http.dart' as http;

buscarUsuario(context) async {
  http.Response response = await http.get(
      "${variaveis.url}conta/buscar/${variaveis.login.login}/${variaveis.login
          .password}",
      headers: variaveis.headerComum);
  if(response.statusCode == 404){
    return false;
  }else{
    return true;
  }
}