import 'package:easyjobfrontend/features/welcome/presentation/1_login_title.dart';
import 'package:easyjobfrontend/features/welcome/presentation/2_login_sub_title.dart';
import 'package:easyjobfrontend/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../widgtes/gradient_background.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Text(
                  "EASYJOB",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: title),
                ),
                Text(
                  "A plataforma que pode ajudar você a encontrar o \nprofessor mais perto do seu filho(a)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: title),
                ),
                SizedBox(
                  width: 264,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: () {
                      // função a ser executada quando o botão for pressionado
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: backgroundButton,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
