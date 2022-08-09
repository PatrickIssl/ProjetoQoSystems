
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/gradients/GradientText.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              variaveis.laranja,
              variaveis.vermelho,
            ],
          ),
        ),
          child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 200)),
            GradientText(variaveis.subtitulo,
              gradient: LinearGradient(
                colors: variaveis.colorTitulo,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            GradientText(variaveis.subtitulo,
              gradient: LinearGradient(
                colors: variaveis.colorTitulo,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
           SpinKitFadingCircle(
              color: variaveis.pretoClaro,
              size: 100.0,
            ),
            Padding(padding: EdgeInsets.only(top: 125)),
           Text(
             variaveis.version,
                  textAlign: TextAlign.center,
                ),
          ],
        ),
      ),
    );
  }
}
