import 'package:easyjobfrontend/widgtes/gradiend_card_backrgound.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../utils/colors.dart';

class CardTeacher extends StatelessWidget {
  const CardTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 285,
        width: 478,
        child: OutlineGradientButton(
          gradient: LinearGradient(
            colors: [
              Color(0xff5E2EC4),
              Color(0xff4150D7)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          strokeWidth: 2,
          radius: Radius.circular(16),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Preço por aula/hora ",
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    Text(
                      "R\$ 70,00",
                      style: TextStyle(fontSize: 18, color: title, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Matéria ",
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    Text(
                      "Matemática",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: title),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Professora de matemática com 15 anos de experiência, tanto em escola públicas quanto privadas",
                  style: TextStyle(fontSize: 18, color: title),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    height: 45,
                    color: Color(0xff5E2EC4),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Detalhes do professor",
                          style: TextStyle(color: title, fontSize: 18, fontWeight: FontWeight.w500),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
