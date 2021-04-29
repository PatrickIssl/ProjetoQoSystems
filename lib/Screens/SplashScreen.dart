import 'package:flutter/material.dart';
import 'package:qosystem/gradients/GradientText.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
            GradientText(_titulo,
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xFF928F8F),
                  Colors.white,
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            GradientText(_subtitulo,
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xFF928F8F),
                  Colors.white,
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
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
