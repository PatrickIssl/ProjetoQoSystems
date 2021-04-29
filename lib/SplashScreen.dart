import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   var _titulo = "QO";
   var _subTitulo = "Systems";
   var _version = "Version 1.0.0 powered by QO SYSTEMS";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF9900),
              Color(0xFFF04700),
            ],
          ),
        ),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_titulo,
              style: TextStyle(
                fontFamily: 'Saira',
                fontSize: 50,
                fontWeight: FontWeight.normal,
                color: Color(0xFF928F8F),
              ),
            ),
            Text(_subTitulo,
                  style: TextStyle(
                    fontFamily: 'Saira',
                    fontSize: 50,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF928F8F),
                  ),
                ),

            Padding(padding: EdgeInsets.fromLTRB(0,100,0,0),
              child:Image.asset("assets/imagens/circulo.png")
            ),
            Padding(
                    padding: EdgeInsets.all(35),
                    child:Text(_version,
                      textAlign: TextAlign.center,
                    )
                )
          ],
        ),
      ),

      ),

    );
  }
}
