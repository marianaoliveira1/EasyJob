import 'package:easyjobfrontend/features/student/register_student.dart';
import 'package:easyjobfrontend/screens/login/login_screen.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 142.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                ),
                Text(
                  "EASYJOB",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: title),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "A plataforma que pode ajudar você a encontrar o \nprofessor mais perto do seu filho(a)",
                  style: TextStyle(fontSize: 24, color: title),
                ),
                SizedBox(
                  height: 150,
                ),
                SizedBox(
                  width: 264,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterStudent()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 28),
                    ),
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
