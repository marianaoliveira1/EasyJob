import 'package:easyjobfrontend/widgtes/gradiend_card_backrgound.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CardTeacher extends StatelessWidget {
  const CardTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DefaultBackgroundCardTeacher(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mariana Oliveira Fernandes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: title),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Matemática",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: title),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Descrição",
                  style: TextStyle(fontSize: 14, color: title),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Professora de matemática com 15 anos de experiência, tanto em escola públicas quanto privadas",
                  style: TextStyle(fontSize: 18, color: title),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Formação",
                  style: TextStyle(fontSize: 14, color: title),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sou formado em licenciatura em matemática pela Universidade Federal do Ceará (UFC). Hoje, minha atuação priniciplamente no Ensino Fudamental I.",
                  style: TextStyle(fontSize: 18, color: title),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xff141437),
                  child: Text(
                    "R\$ 70,00/h",
                    style: TextStyle(fontSize: 18, color: title),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
