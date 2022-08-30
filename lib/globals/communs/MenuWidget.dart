import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

import '../../Screens/Home.dart';

Widget MenuWidget(
    var categoria, var img, var nomeLanche, var Ingredientes, var valor) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide()),
    ),
    width: Get.width,
    height: Get.height * 0.18,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04444),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         Container(
           width: Get.width * 0.50,
           child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(bottom: Get.height*0.01) , child: Text( "${nomeLanche}",),),
                 Padding(padding: EdgeInsets.only(bottom: Get.height*0.01) , child:Container(
                   width: Get.width * 0.70,
                   child: Text(
                     "${Ingredientes}",
                     style: TextStyle(overflow: TextOverflow.fade),
                   ),
                 )),
                 Text("R\$ ${valor}",
                     style: TextStyle(fontWeight: FontWeight.bold))
               ]),
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
                    image: NetworkImage('${img}'),
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
