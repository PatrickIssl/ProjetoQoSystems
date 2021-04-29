import 'package:flutter/material.dart';
import 'package:qosystem/GradientText.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final Shader gradiente1 = LinearGradient(
      colors: <Color>[
        Color(0xFF928F8F),
        Color(0xFFFFFFFF)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  ).createShader(Rect.fromLTWH(0.0, 0.0, 800, 650));

  final Shader gradiente2 = LinearGradient(
      colors: <Color>[
        Color(0xFF928F8F),
        Color(0xFFFFFFFF)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  ).createShader(Rect.fromLTWH(0.0, 0.0, 800, 850));

    var _titulo = "QO";
    var _subtitulo = "SYSTEMS";
   var _version = "Version 1.0.0 powered by QO SYSTEMS";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF9900),
              Color(0xFFF01C00),
            ],
          ),
        ),
          child: Column(

          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 200)),
            Text(_titulo,
              style: TextStyle(
                  fontFamily: 'Saira',
                  fontSize: 75,
                  fontWeight: FontWeight.normal,
                  foreground: Paint()..shader = gradiente1
              ),
            ),
            GradientText(_subtitulo,

              ),
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
            Image.asset("assets/imagens/circulo.png"),
            Padding(padding: EdgeInsets.only(top: 150)),
           Text(
                  _version,
                  textAlign: TextAlign.center,
                ),
          ],
        ),
      ),
    );
  }
}
