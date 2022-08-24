import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

import '../../Screens/Home.dart';

Widget MenuWidget(var categoria , var img){
  return Padding( padding: EdgeInsets.only( bottom: Get.height * 0.0421875),
    child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide()),
      ),
      width: Get.width,
      height: Get.height * 0.125,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("nomeLanche" , style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Ingredientes"),
                Text("R\$ valor" , style: TextStyle(fontWeight: FontWeight.bold))
              ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height * 0.10625,
                width: Get.height * 0.10625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  image: DecorationImage(
                    image: NetworkImage(
                        '${img}'),
                    fit: BoxFit.fill,
                  ),
                ),
              )

            ],
          )
        ],
      ),

    ),
  );

}