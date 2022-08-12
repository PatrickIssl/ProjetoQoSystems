import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qosystem/globals/variaveis.dart' as variaveis;

import '../../Screens/Home.dart';

Widget navigationBar(var func){
  return BottomAppBar(
    child: Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        iconSize: Get.height*0.05,
        currentIndex: variaveis.selectedPage,
        onTap: func,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                variaveis.laranja,
                variaveis.laranja,
                variaveis.laranjaMuitoForte
              ])
      ),
    ),
    color: Color(0xFFFF2E00),
  );

}