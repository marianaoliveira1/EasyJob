import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class ProfileTeacherScreen extends StatelessWidget {
  const ProfileTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Color(0xff212452),
                      child: Text(
                        "Matemática",
                        style: TextStyle(fontSize: 18, color: title),
                      ),
                    ),
                    Text(
                      "Descrição",
                      style: TextStyle(fontSize: 14, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Professora de matemática com 15 anos de experiência, \ntanto em escola públicas quanto privadas",
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Mariana Oliveira Fernandes",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: title),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Preço por hora",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "R\$70,00",
                            style: TextStyle(fontSize: 20, color: title),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Color(0xff04D361),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Entrar em contato",
                                style: TextStyle(fontSize: 18, color: title),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
