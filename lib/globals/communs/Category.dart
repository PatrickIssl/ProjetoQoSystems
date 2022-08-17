import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

import '../../Screens/Home.dart';

Widget CategoryWidget(var categoria , var img){
  return Padding( padding: EdgeInsets.only( bottom: Get.height * 0.0421875),
    child: Container(
      width: Get.width,
      height: Get.height * 0.1578125,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              '${img}'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: Get.width*0.10), child: Text(categoria, style: TextStyle(
                  fontSize: 30,
                  color: variaveis.white,
                  fontWeight: FontWeight.bold
              ),),)
            ],
          )
        ],
      ),
    ),
  );

}