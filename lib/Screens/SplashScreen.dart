import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qosystem/gradients/GradientText.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:qosystem/variaveis/globals.dart' as globals;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


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
              globals.laranja,
              globals.vermelho,
            ],
          ),
        ),
          child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 200)),
            GradientText(globals.subtitulo,
              gradient: LinearGradient(
                colors: globals.colorTitulo,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            GradientText(globals.subtitulo,
              gradient: LinearGradient(
                colors: globals.colorTitulo,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
           SpinKitFadingCircle(
              color: globals.pretoClaro,
              size: 100.0,
            ),
            Padding(padding: EdgeInsets.only(top: 125)),
           Text(
                  globals.version,
                  textAlign: TextAlign.center,
                ),
          ],
        ),
      ),
    );
  }
}
